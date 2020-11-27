# 中间件

from .settings import USER_AGENTs
# 在列表中随机选择一个
from random import choice
from fake_useragent import UserAgent

class UserAgentDownloadMiddleware(object):
    def process_request(self, request, spider):
        # print(choice(USER_AGENTs))
        request.headers.setdefault(b'User-Agent',UserAgent().random)
# "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
# "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1944.0 Safari/537.36"