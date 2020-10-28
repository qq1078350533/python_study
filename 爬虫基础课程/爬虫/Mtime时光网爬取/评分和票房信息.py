import requests
import re
import json
import parser

class HtmlDownload(object):

    def download(self,url):
        if url is None:
            return  None
        headers = {
            'User-Agent': 'Mozilla/5.0(Windows NT 10.0;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/79.0.3945.117Safari/537.36'
        }
        r = requests.get(url,headers=headers)
        if r.status_code == 200:
            r.encoding = 'utf-8'
            return r.text
        return None

    def parser_url(self,page_url,response):
        pattern = re.compile(r'(http://movie.mtime.com/(\d+)/)')
        urls = pattern.findall(response)
        if urls != None:
            return list(set(urls))
        else:
            return None

    def parser_json(self,page_url,response):
        pattern = re.compile(r'=(.*?);')
        result = pattern.findall(response)[0]
        if result != None:
            value = json.loads(result)
            try:
                isRelease = value.get('value').get('isRelease')
<<<<<<< HEAD
            except Exception,e:
=======
<<<<<<< HEAD
            except Exception,e:
=======
            except Exception as e:
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
                print(e)
                return None
            if isRelease:
                if value.get('value').get('hotValue') == None:
                    return self._parser_release(page_url,value)
                else:
                    return self._parser_no_release(page_url,value,isRelease=2)
            else:
                return self._parser_no_release(page_url,value)

    def _parser_release(self,page_url,value):
        try:
            isRelease = 1
            movieRating = value.get('value').get('movieRating')
            boxOffice = value.get('value').get('boxOffice')
            movieTitle = value.get('value').get('movieTitle')
            try:
                rank = boxOffice.get('Rank')
<<<<<<< HEAD
            except Exception,e:
=======
<<<<<<< HEAD
            except Exception,e:
=======
            except Exception as e:
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
                Rank=0
            return (
                movieRating,boxOffice,movieTitle
            )
<<<<<<< HEAD
        except Exception ,e:
=======
<<<<<<< HEAD
        except Exception ,e:
=======
        except Exception as e:
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
            print(e,page_url,value)
            return None



    def _parser_no_release(self,page_url,value,isRelease = 0):
        try:
            movieRating = value.get('value').get('movieRating')

            movieTitle = value.get('value').get('movieTitle')
            try:
                Rank = value.get('value').get('hotValue').get('Ranking')
<<<<<<< HEAD
            except Exception,e:
=======
<<<<<<< HEAD
            except Exception,e:
=======
            except Exception as e:
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
                Rank = 0
            return (
                movieTitle
            )
<<<<<<< HEAD
        except Exception,e:
=======
<<<<<<< HEAD
        except Exception,e:
=======
        except Exception as e:
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
            print(e,page_url,value)
            return None