using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using Wy.Flight.Entity;
using Zeus.Booking;
using Zeus.Sys.Extensions;
using Zeus.Sys.HttpRequest;
using Zeus.Sys.Json;
using Zeus.Sys.Regist;

namespace B_MU_Booking
{
    public class bMUbooking : BookingBase
    {
        public bMUbooking(BookingEngine curEngine, TicketRequest curTask)
            : base(curEngine, curTask)
        {

        }
        public override bool BookingOrder()
        {

            string strRegCookie = Register.GetRegistData_Root("BRCOOKIE1");
            if (String.IsNullOrEmpty(strRegCookie))
            {
                ConsoleLogInfo("Cookie为空");
                return false;
            }
            mucookiedata cookieData = JsonHelper.JsonToObject<mucookiedata>(strRegCookie);
            #region 航班搜索

            string strFlightParm = "{\"adtCount\":" + AdultCount + ",\"chdCount\":" + ChildCount + ",\"infCount\":0,\"currency\":\"CNY\",\"tripType\":\"OW\",\"recommend\":false,\"reselect\":\"\",\"page\":\"0\",\"sortType\":\"a\",\"sortExec\":\"a\",\"segmentList\":[{\"deptCd\":\"" + DepAir + "\",\"arrCd\":\"" + ArrAir + "\",\"deptDt\":\"" + DepDate.ToString("yyyy-MM-dd") + "\",\"deptAirport\":\"\",\"arrAirport\":\"\",\"deptCdTxt\":\"上海\",\"arrCdTxt\":\"洛杉矶\",\"deptCityCode\":\"" + DepCity + "\",\"arrCityCode\":\"" + ArrCity + "\"}],\"version\":\"A.1.0\"}";


            string searchBoody = "_=" + cookieData.serid + "&searchCond=" + strFlightParm;
            HttpPost searchPost = new HttpPost("http://www.ceair.com/otabooking/flight-search!doFlightSearch.shtml");
            searchPost.Accept = "application/json, text/javascript, */*; q=0.01";
            searchPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            searchPost.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
            searchPost.PostData = searchBoody;
            searchPost.Referer = "http://www.ceair.com/booking/aicn-apvg-200717_CNY.html";
            searchPost.Host = "www.ceair.com";
            searchPost.CookieList = cookieData.cookieList;
            string strSearchRes = searchPost.Request();

            muFlightRspEntity curSearchFlight = JsonHelper.JsonToObject<muFlightRspEntity>(strSearchRes);
            if (curSearchFlight == null)
            {
                ConsoleLogInfo("搜索结果异常");
                return false;
            }
            if (curSearchFlight.FlightInfo == null)
            {
                ConsoleLogInfo("当前行程无航班");
                return false;
            }
            FlightInfo selectFlight = curSearchFlight.FlightInfo.Find(delegate (FlightInfo tmpFlight)
            {
                return tmpFlight.FlightNo == FlightNumber;
            });

            if (selectFlight == null)
            {
                ConsoleLogInfo("未找到航班" + FlightNumber);
                return false;
            }

            List<SearchProduct> searchProductList = curSearchFlight.SearchProduct.FindAll(delegate (SearchProduct curProduct)
            {
                return curProduct.Snk.Contains(selectFlight.FlightNo);
            });
            if (searchProductList == null || searchProductList.Count == 0)
            {
                ConsoleLogInfo("未找到报价" + FlightNumber);
                return false;
            }
            SearchProduct minProduct = null;

            foreach (SearchProduct tmpProduct in searchProductList)
            {
                if (minProduct == null || minProduct.SalePrice > tmpProduct.SalePrice)
                    minProduct = tmpProduct;
            }
            #endregion



            #region 登录
            HttpPost loginPost = null;
            try
            {
                string strLogin = "";
                for (int i = 0; i < 3; i++)
                {
                    HttpPost geetPost = new HttpPost("https://passport.ceair.com/cesso/geet!geetInit.shtml");
                    geetPost.Accept = "application/json, text/javascript, */*; q=0.01";
                    geetPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
                    geetPost.Referer = "https://passport.ceair.com/?redirectUrl=http%3A%2F%2Fwww.ceair.com%2F";
                    geetPost.Host = "passport.ceair.com";
                    geetPost.CookieList = searchPost.RspCookieList;
                    string strGeetPost = geetPost.Request();
                    initdata curInitData = JsonHelper.JsonToObject<initdata>(strGeetPost);

                    //string strGeetDM = String.Format("http://47.100.165.218:5001/geetest/test1/v3?gt={0}&challenge={1}&guid={2}"
                    //     , curInitData.gt
                    //     , curInitData.challenge
                    //     , "8e741316-f510-8c7e-2d63-240ddbd285e7");

                    #region 校验1
                    //string strGeetDM = String.Format("http://api.geev.top/geetest/tzfresh?gt={0}&challenge={1}&token={2}&refer={3}"
                    //      , curInitData.gt
                    //      , curInitData.challenge
                    //      , "sbsiDHkm47896rud"
                    //     , "");
                    //HttpGet geetDMGet = new HttpGet(strGeetDM);
                    //string strGeetDMRes = geetDMGet.Request();
                    //Root curJiaoYan = JsonHelper.JsonToObject<Root>(strGeetDMRes);
                    //if (String.IsNullOrEmpty(curJiaoYan.validate))
                    //{
                    //    ConsoleLogInfo("滑块异常");
                    //    continue;
                    //}
                    //string body = @"user=" + AccountInfo.UserName + "&password=MTIzNDQzMjE=&token=APDIDJS_donghang_2e4756a51a1253fa85be0217c2dec709&ltv=1&at=1&validateType=geek&geetest_challenge=" + curJiaoYan.challenge + "&geetest_seccode=" + curJiaoYan.validate + "%7Cjordan&geetest_validate=" + curJiaoYan.validate;
                    #endregion

                    #region 校验2
                    string strGeetDM = String.Format("http://47.100.165.218:5001/geetest/test1/v3?gt={0}&challenge={1}&guid={2}"
                     , curInitData.gt
                     , curInitData.challenge
                     , "bc60f196-b582-c9d5-ae9b-91a3c2c5bc8a");
                    HttpGet geetDMGet = new HttpGet(strGeetDM);
                    string strGeetDMRes = geetDMGet.Request();

                    ConsoleLogInfo("登录打码" + strGeetDMRes);
                    jiaoyanres curJiaoYan = JsonHelper.JsonToObject<jiaoyanres>(strGeetDMRes);
                    if (String.IsNullOrEmpty(curJiaoYan.validate))
                    {

                        ConsoleLogInfo("滑块异常");
                        continue;
                    }
                    string body = @"user=" + AccountInfo.UserName + "&password=MTIzNDQzMjE=&token=APDIDJS_donghang_2e4756a51a1253fa85be0217c2dec709&ltv=1&at=1&validateType=geek&geetest_challenge=" + curInitData.challenge + "&geetest_seccode=" + curJiaoYan.validate + "%7Cjordan&geetest_validate=" + curJiaoYan.validate;

                    #endregion




                    loginPost = new HttpPost("https://passport.ceair.com/cesso/login-static!auth.shtml");
                    loginPost.Accept = "application/json, text/javascript, */*; q=0.01";
                    loginPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
                    loginPost.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
                    loginPost.Referer = "https://passport.ceair.com/?redirectUrl=http%3A%2F%2Fwww.ceair.com%2F";
                    loginPost.Host = "passport.ceair.com";
                    loginPost.CookieList = geetPost.RspCookieList;
                    loginPost.PostData = body;
                    strLogin = loginPost.Request();
                    if (strLogin.Contains("\"SUCCESS\""))
                    {
                        ConsoleLogInfo("登录成功");
                        break;
                    }
                    else if (strLogin.Contains("用户"))
                    {

                        ConsoleLogInfo("登录失败," + strLogin);
                        break;
                    }
                    else
                    {
                        ConsoleLogInfo("登录失败," + strLogin);
                        continue;
                    }
                }
                if (!strLogin.Contains("\"SUCCESS\""))
                {
                    Console.WriteLine("登录失败" + strLogin);
                    ConsoleLogInfo("登录失败" + strLogin);
                    return false;
                }
            }
            catch (System.Exception ex)
            {
                ConsoleLogError(ex, "登录");
                return false;
            }

            #endregion

            #region 选择航班
            string strSelectBodyFlight = "{\"fscKey\":\"" + curSearchFlight.FscKey + "\",\"isBrandUp\":\"\",\"selcon\":[{\"airPriceUnitIndex\":" + minProduct.Index + ",\"snk\":\"" + minProduct.Snk + "\"}]}";

            strSelectBodyFlight = "_=" + cookieData.serid + "&selectConds=" + strSelectBodyFlight;
            HttpPost selectPost = new HttpPost("http://www.ceair.com/otabooking/flight-confirm!flightConfirm.shtml");
            selectPost.Accept = "application/json, text/javascript, */*; q=0.01";
            selectPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            selectPost.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
            selectPost.PostData = strSelectBodyFlight;
            selectPost.CookieList = loginPost.RspCookieList;
            selectPost.Referer = "http://www.ceair.com/booking/aicn-apvg-200717_CNY.html";
            selectPost.Host = "www.ceair.com";
            string strSelectFlight = selectPost.Request();

            #endregion

            #region 提交乘机人
            Zeus.Log.ZLogClient.WriteLogFile(strSelectFlight);
            string allChekckToken = strSelectFlight.Split(';')[1];
            List<allPaxInfo> allPax = new List<allPaxInfo>();
            foreach (var curPassenger in OrderInfo.Passengers)
            {
                string[] namearray = curPassenger.name.Split('/');
                allPaxInfo allPaxInfo = new allPaxInfo()
                {
                    uuid = "",
                    favorIdx = "",
                    paxNameFirst = string.IsNullOrEmpty(curPassenger.lastName) ? namearray[1] : curPassenger.lastName,
                    paxNameLast = string.IsNullOrEmpty(curPassenger.firstName) ? namearray[0] : curPassenger.firstName,
                    benePaxListIndex = "1",
                    cardId = "",
                    contactInfo = "",
                    contacts = "mobile",
                    ffpAirline = "",
                    ffpNo = "",
                    ffpLevel = "",
                    infCarrierName = "",
                    insurance = false,
                    isBeneficariesAssigned = false,
                    isBeneficiary = "",
                    paxName = "",
                    paxNameCn = "",
                    paxOrigin = "",
                    id = "",
                    email = OrderContactInfo.Email,
                    birthday = DateTime.ParseExact(curPassenger.birthday, "yyyyMMdd", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"),
                    docaCity = "Park",
                    docaState = "PA",
                    docaStreet = "Shinfield Road Reading RG2 7ED",
                    mobileAreaCode = "86",
                    docaPostCode = "19019",
                    docaNationCode = "",
                    gender = curPassenger.gender,
                    paxType = curPassenger.ageType == "1" ? "ADT" : "CHD",
                    idIssueNation = curPassenger.nationality,
                    nationality = curPassenger.nationality,
                    idDetails = new List<idDetail>(),
                    idType = curPassenger.cardType == "1" ? "PP" : "OTHER",
                    idNo = curPassenger.cardNum,
                    insureInfos = new List<object>(),
                    idValidDt = DateTime.ParseExact(curPassenger.cardExpired, "yyyyMMdd", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"),
                    mobile = OrderContactInfo.Phone,

                };
                allPaxInfo.idDetails = new List<idDetail>();
                allPaxInfo.idDetails.Add(
                new idDetail()
                {
                    id = allPaxInfo.id,
                    idIssueNation = allPaxInfo.nationality,
                    idType = allPaxInfo.idType,
                    idNo = allPaxInfo.idNo,
                    idValidDt = allPaxInfo.idValidDt
                });
                allPax.Add(allPaxInfo);
            }
            string TimeStamp = GetTimeStamp();
            string strPassenger = JsonHelper.ObjectToJson(allPax);
            //strPassenger = "[{\"uuid\":\"ac830890-7a12-11ea-a0dc-b1efc89d2a80\",\"favorIdx\":\"ac821e30-7a12-11ea-a0dc-b1efc89d2a80\",\"benePaxListIndex\":\"\",\"birthday\":\"1980-01-01\",\"docaCity\":\"Park\",\"docaNationCode\":\"\",\"docaPostCode\":\"19019\",\"docaState\":\"PA\",\"docaStreet\":\"Shinfield Road Reading RG2 7ED\",\"mobileAreaCode\":\"\",\"email\":\"\",\"ffpAirline\":\"\",\"ffpLevel\":\"\",\"ffpNo\":\"\",\"gender\":\"M\",\"idNo\":\"G44444555\",\"idType\":\"PP\",\"id\":\"\",\"idValidDt\":\"2022-04-19\",\"idIssueNation\":\"CN\",\"nationality\":\"CN\",\"infCarrierName\":\"\",\"insurance\":false,\"insureInfos\":[],\"mobile\":\"17600883716\",\"contactInfo\":\"\",\"contacts\":\"mobile\",\"cardId\":\"\",\"paxType\":\"ADT\",\"paxName\":\"\",\"paxNameCn\":\"\",\"paxNameFirst\":\"DADA\",\"paxNameLast\":\"PANG\",\"isBeneficariesAssigned\":false,\"isBeneficiary\":\"\",\"paxOrigin\":\"0\",\"idDetails\":[{\"id\":\"\",\"idNo\":\"G44444555\",\"idType\":\"PP\",\"idIssueNation\":\"CN\",\"idValidDt\":\"2022-04-19\"}]}]";
            #region 判断乘机人信息
            HttpPost checkDataPost = new HttpPost("http://www.ceair.com/otabooking/paxinfo-input!checkDataNew.shtml");
            checkDataPost.Accept = "application/json, text/javascript, */*; q=0.01";
            checkDataPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            checkDataPost.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
            checkDataPost.PostData = @"allPaxInfo=" + HttpUtility.UrlEncode(strPassenger) + "&sessionVersion=" + curSearchFlight.CreateTime;
            checkDataPost.CookieList = loginPost.RspCookieList;
            checkDataPost.Referer = "http://www.ceair.com/booking/passenger.html?allCheckToken=" + allChekckToken;
            checkDataPost.Host = "www.ceair.com";
            string strCheckData = checkDataPost.Request();

            if (!strCheckData.Contains("\"passCheck\":true"))
            {
                ConsoleLogInfo("乘机人信息有误：" + strCheckData);
                return false;
            }
            CheckPassengerRes checkDataRes = JsonHelper.JsonToObject<CheckPassengerRes>(strCheckData);
            #endregion

            string strPassContact = JsonHelper.ObjectToJson(new PascontactInfo()
            {
                contactEmail = OrderContactInfo.Email,
                contactMobile = OrderContactInfo.Phone,
                contactName = OrderContactInfo.FirstName + OrderContactInfo.LastName,
                id = Zeus.Sys.Common.Utility.GetNewID().ToString().MD5().Substring(2, 8)
            });

            #region 判断联系人信息
            HttpPost checkContact = new HttpPost("http://www.ceair.com/otabooking/paxinfo-input!checkContactInfo.shtml");
            checkContact.Accept = "application/json, text/javascript, */*; q=0.01";
            checkContact.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            checkContact.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
            checkContact.PostData = @"contactInfo=" + HttpUtility.UrlEncode(strPassContact) + "&sessionVersion=" + curSearchFlight.CreateTime;
            checkContact.CookieList = loginPost.RspCookieList;
            checkContact.Referer = "http://www.ceair.com/booking/passenger.html?allCheckToken=" + allChekckToken;
            checkContact.Host = "www.ceair.com";
            string strcheckContact = checkContact.Request();
            if (!strcheckContact.Contains("\"checkOfResult\":true"))
            {
                ConsoleLogInfo("联系人信息有误：" + strcheckContact);
                return false;
            }
            #endregion


            string strBodyPassenger = "allPaxInfo=" + HttpUtility.UrlEncode(strPassenger) + "&contactInfo=" + HttpUtility.UrlEncode(strPassContact) + "&sessionVersion=" + curSearchFlight.CreateTime + "&nonmember=0&useScore=false";
            HttpPost passengerPost = new HttpPost("http://www.ceair.com/otabooking/paxinfo-input!showBookingInfoNew.shtml");
            passengerPost.Accept = "text/plain, */*; q=0.01";
            passengerPost.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            passengerPost.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
            passengerPost.PostData = strBodyPassenger;
            passengerPost.CookieList = checkContact.RspCookieList;
            passengerPost.Referer = "http://www.ceair.com/booking/passenger.html?allCheckToken=" + allChekckToken;
            passengerPost.Host = "www.ceair.com";
            string strSubmitPassenger = passengerPost.Request();
            if (strSubmitPassenger != "success")
            {
                ConsoleLogInfo("提交乘机人失败：" + strSubmitPassenger);
                return false;
            }
            #endregion

            HttpGet getVerifyCode = new HttpGet("http://www.ceair.com/booking/verification-code!getBookingVerficationCode.shtml?_=" + curSearchFlight.CreateTime + "");
            getVerifyCode.Accept = "text/plain, */*; q=0.01";
            getVerifyCode.CookieList = passengerPost.RspCookieList;
            getVerifyCode.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            getVerifyCode.Referer = "http://www.ceair.com/booking/passenger.html?allCheckToken=" + allChekckToken;

            string code = getVerifyCode.Request();
            HttpGet getPayUrl = new HttpGet("http://www.ceair.com/otabooking/booking!booking.shtml?checkToken=" + code + "&allCheckToken=" + allChekckToken + "");
            getPayUrl.Accept = "application/json, text/javascript, */*; q=0.01";
            getPayUrl.CookieList = getVerifyCode.RspCookieList;
            getPayUrl.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 Edg/80.0.361.111";
            getPayUrl.Referer = "http://www.ceair.com/booking/passenger.html?allCheckToken=" + allChekckToken;

            string payurl = getPayUrl.Request();
            PayUrlResInfo resinfo = JsonHelper.JsonToObject<PayUrlResInfo>(payurl);
            if (string.IsNullOrEmpty(resinfo.nextUrl) || string.IsNullOrEmpty(resinfo.orderNo))
            {
                ConsoleLogInfo(resinfo.airResultMsg);
                return false;
            }
            OrderBackInfo.airorderinfo = new airorderinfo()
            {
                airordercode = resinfo.orderNo.ToString()
            };
            OrderBackInfo.airorderinfo.airPayInfo = new airpayinfo()
            {
                payUrl = resinfo.nextUrl,
                lastPayTime = DateTime.Now.AddMinutes(10),
                payprice = decimal.Parse(checkDataRes.price.totalPrice.price),
                paycurrency = checkDataRes.price.totalFee.currency
            };
            return true;
        }

        public override bool PayOrder()
        {
            return true;
        }

        /// <summary>
        /// 获取时间戳
        /// </summary>
        /// <returns></returns>
        public string GetTimeStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalMilliseconds).ToString();
        }
    }

    public class AirOrderResListItem
    {
        /// <summary>
        /// 
        /// </summary>
        public string airOrderType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string couponOrderNo { get; set; }
    }

    public class CrossSucessXOrderListItem
    {
        /// <summary>
        /// 
        /// </summary>
        public string orderXNo { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string orderXType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string resultCode { get; set; }
    }

    public class PayUrlResInfo
    {
        /// <summary>
        /// 
        /// </summary>
        public List<AirOrderResListItem> airOrderResList { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string airResultCode { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string airResultMsg { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<string> crossFailXOrderList { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<CrossSucessXOrderListItem> crossSucessXOrderList { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<string> errorMessageList { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string language { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string needRebooking { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string nextUrl { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string orderNo { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string pricingResultViewDto { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string resultCode { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string resultMessage { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string shoppingType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string timeStamp { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string transactionId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string version { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<string> waringMessageList { get; set; }
    }
    public class initdata
    {
        public string challenge { get; set; }
        public string gt { get; set; }
    }
    public class jiaoyanres
    {
        public string validate { get; set; }
        //public jiaoyandata data { get; set; }
    }
    public class allPaxInfo
    {
        public string uuid { get; set; }
        public string favorIdx { get; set; }
        public string benePaxListIndex { get; set; }
        public string birthday { get; set; }
        public string docaCity { get; set; }
        public string ffpLevel { get; set; }
        public string docaNationCode { get; set; }
        public string docaPostCode { get; set; }
        public string docaState { get; set; }
        public string docaStreet { get; set; }
        public string mobileAreaCode { get; set; }
        public string email { get; set; }
        public string ffpAirline { get; set; }
        public string ffpNo { get; set; }
        public string gender { get; set; }
        public string idNo { get; set; }
        public string idType { get; set; }
        public string id { get; set; }
        public string idValidDt { get; set; }
        public string idIssueNation { get; set; }
        public string nationality { get; set; }
        public string infCarrierName { get; set; }
        public bool insurance { get; set; }
        public List<object> insureInfos { get; set; }
        public string mobile { get; set; }
        public string contactInfo { get; set; }
        public string contacts { get; set; }
        public string cardId { get; set; }
        public string paxType { get; set; }
        public string paxName { get; set; }
        public string paxNameCn { get; set; }
        public string paxNameFirst { get; set; }
        public string paxNameLast { get; set; }
        public bool isBeneficariesAssigned { get; set; }
        public string isBeneficiary { get; set; }
        public string paxOrigin { get; set; }
        public List<idDetail> idDetails { get; set; }
    }


    public class idDetail
    {
        public string id { get; set; }
        public string idNo { get; set; }
        public string idType { get; set; }
        public string idIssueNation { get; set; }
        public string idValidDt { get; set; }
    }

    public class PascontactInfo
    {
        public string contactName { get; set; }
        public string contactMobile { get; set; }
        public string contactEmail { get; set; }
        public string id { get; set; }
    }
    public class Root
    {
        /// <summary>
        /// 
        /// </summary>
        public string score { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int success { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int count { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string challenge { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string message { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string validate { get; set; }
    }
    public class mucookiedata
    {
        public string serid { get; set; }
        public List<System.Net.Cookie> cookieList { get; set; }
    }
}
