import requests
from fake_useragent import UserAgent

url = 'https://www.guazi.com/loudi/buy/'
lua_source='''
function main(splash, args)
  splash:go('{}')
  splash:wait(1)
  return splash:html()
end
'''.format(url)
# function main(splash, args)
#   assert(splash:go(args.url))
#   assert(splash:wait(0.5))
#   return {
#     html = splash:html(),
#     png = splash:png(),
#     har = splash:har(),
#   }
# end
# execute?lua_source={自己写代码}
splash_url = "http://localhost:8050/execute?lua_source={}".format(lua_source)

response = requests.get(splash_url,headers={'User-Agent':UserAgent().random})
response.encoding = 'utf-8'
print(response.text)