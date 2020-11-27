import requests
import re
import pandas as pd
import time


def start_url():
    # 三级分类的五种
    for j in ['16806','16809','16810','16812','16815']:
        # 报错即立刻停止这一循环，开始下一个三级分类     # 此处设置异常是避免有些三级分类没有100页
        try:
            for i in range(1,200):
                url = "https://union.jd.com/api/goods/search"
                data = '{"pageNo":1,"pageSize":60,"searchUUID":"db901b3d1ba14b1e8866e69d44ce2521","data":{"bonusIds":null,"categoryId":16750,"cat2Id":16755,"cat3Id":16806,"deliveryType":0,"fromCommissionRatio":null,"toCommissionRatio":null,"fromPrice":null,"toPrice":null,"hasCoupon":0,"isHot":null,"isPinGou":0,"isZY":0,"isCare":0,"lock":0,"orientationFlag":0,"sort":null,"sortName":null,"key":"","searchType":"st3","keywordType":"kt0"}}'
                # 替换页数，和三级分类
                data = data.replace("1",str(i),1)
                data = data.replace("16806",str(j),1)
                headers = {
                    "accept-encoding": "gzip, deflate, br",
                    "accept": "application/json, text/plain, */*",
                    "sec-fetch-site": "same-origin",
                    "sec-fetch-mode": "cors",
                    "sec-fetch-dest": "empty",
                    "accept-language": "zh-CN,zh;q=0.9",
                    "content-length": "414",
                    'cookie': '__jdu=2095011435; __jdv=209449046|direct|-|none|-|1585622218359; 3AB9D23F7A4B3C9B=55ZGP46BXUCHLTOOHFAWJMOZKWCVMHPE3IT7EV52BXXDAT3JM72JWO4COBRKWZ3O4L3LLWTCFDOLB7X4IWT6NQ6H4U; pinId=ngjg6Z07I8sZd4X0tJy4QLV9-x-f3wj7; unick=jd_133487uyb; _tp=kg9Q3D8Uuw5TqQn0rudALFrNIfEzlpH3LTcWXHNJwrE%3D; _pst=jd_7a5c89d1e87a8; sidebarStatus=1; ssid="DnHgCFEoQRyMOr9ju2hvgw=="; __jda=209449046.2095011435.1582986937.1585626064.1585651206.4; __jdc=209449046; wlfstk_smdl=djindauym68otw6324dlklr415macnlp; TrackID=1CfanBaNsNVNUXl0Ezu172H_ITJhe4bSwrbjLLH30KRG4lQ5DcVAw-7FmgDDt6DhlB-o9XyKvc1NLM1ttTwdrcGAo7LugJf_fdQOtJ1E_WUGiT4Z9LRAxR9H0NkW35LoJ; thor=80012FE6DF090AA112233C0D4B75672BE17F64AFF11C97F5C5542C47FFD5E08AD951C24AA604605AE2C155CE447E46FC3E0EAA5346487F12ABEAA4510445F9ECDCBCE19BA3AACEF6F394F0CFA63C3EB0A75FEE6507CFDCAA575E42C1D50D3899BB9CB0ADFCB0053F305AC1E649205C23E7FD9162A6CEB5F7D73A434D8A7A744934D429D5637A50327E2842DD1CD0B1DEAB6A5430961129A78055A093F022EDCE; pin=jd_7a5c89d1e87a8; ceshi3.com=000; logining=1; login=true; MNoticeIdjd_7a5c89d1e87a8=283; RT="z=1&dm=jd.com&si=e3vsfgejuls&ss=k8frsajw&sl=h&tt=27n0"; __jdb=209449046.27.2095011435|4.1585651206',
                    "referer": "https://union.jd.com/proManager/index?categories=16750,16755,{}&pageNo={}".format(j,i), #也是替换三级分类的参数
                    "content-type": "application/json;charset=UTF-8",
                    "origin": "https://union.jd.com",
                    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36"
                }
                print("正在请求的网址为{}".format(url))
                response = requests.post(url=url,headers=headers,data=data)
                time.sleep(0.5)
                print(response)
                # 请求成功进行下一步
                if response.status_code == 200:
                    parse_json(response,i)
                else:
                    print("请求失败，请重新运行")
        except TypeError as f:
            print("此三级分类已经完成，请稍等")
            continue


def parse_json(response,i):
    """
    解析网页
    :param response:
    """
    # 获取请求头的refere，来获取当前的一级分类，二级分类，三级分类
    refere = response.request.headers["referer"]
    response = response.json()
    # 获取一级分类的id
    primary_classification_num = re.findall("=(\w+),\w+,\w+&pageNo=\w+",refere)[0]
    # 获取二级分类的id
    secondary_classification_num = re.findall("=\w+,(\w+),\w+&pageNo=\w+",refere)[0]
    # 获取三级分类的id
    tertiary_classification_num = re.findall("=\w+,\w+,(\w+)&pageNo=\w+",refere)[0]
    catList1 = response["data"]["catList1"]
    items = []
    for ri in catList1:
        # 匹配一级分类的id来获取一级分类的文本
        if ri['id'] == int(primary_classification_num):
            primary_classification = ri["categoryName"]
    catList2 = response["data"]["catList2"]
    for ri in catList2:
        # 匹配二级分类的id来获取一级分类的文本
        if ri['id'] == int(secondary_classification_num):
            secondary_classification = ri["categoryName"]
    catList3 = response["data"]["catList3"]
    for ri in catList3:
        # 匹配三级级分类的id来获取一级分类的文本
        if ri['id'] == int(tertiary_classification_num):
            tertiary_classification = ri["categoryName"]
    print("正在爬取{}下{}下{}的第{}页数据".format(primary_classification,secondary_classification,tertiary_classification,i))
    nums = response["data"]["unionGoods"]
    for i in nums:
        # skuName = i[0]["skuName"]
        # 获取商品id
        skuId = i[0]["skuId"]
        # 获取月销量
        monthly_sales = i[0]["inOrderCount30Days"]
        item = {

            "一级分类":primary_classification,
            "二级分类":secondary_classification,
            "三级分类":tertiary_classification,
            "商品ID":skuId,
            # "商品名称":skuName,
            "月销量":monthly_sales
        }

        items.append(item)
    save_csv(items)




def save_csv(items):

    # 调用pandas库中的DataFrame，将a转换成矩阵；然后调用to_csv方法，导入数据到csv文件。
    test = pd.DataFrame(items)
    test.to_csv("./test2.csv",mode='a',index=0,header=False)


def modification():
    # 设置标题头
    title = pd.read_csv('./test2.csv',header=None,names=['一级分类', "二级分类", "三级分类", "商品ID", "月销量"])
    title.to_csv('./test2.csv', index=False)


if __name__ == '__main__':
    start_url()
    modification()

