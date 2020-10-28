# 要在setting中添加downloader middlewares
class ProxyMiddleware(object):
    def process_request(self, request, spider):
        # 两个都行 快代理
        # request.meta['proxy'] = 'http://ip:port'
        # request.meta['proxy'] = 'http://user:password@ip:port'
        request.meta['proxy'] = 'http://223.199.27.85:9999'