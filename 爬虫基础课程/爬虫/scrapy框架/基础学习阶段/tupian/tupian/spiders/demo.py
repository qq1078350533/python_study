# -*- coding: utf-8 -*-
import scrapy
from urllib import parse
# 此scrapy是专门用来图片Pipeline管道下载的，与其他有区别： 例如在设置里设置专门imagesPipeline管道

class DemoSpider(scrapy.Spider):
    name = 'baidu'
    # allowed_domains = ['zol.com.cn/']
    # start_urls = ['http://desk.zol.com.cn/bizhi/8336_103439_2.html']

    def start_requests(self):
        for i in range(1,2):
            i = i*30
            parmas = parse.quote('阿拉伯长袍图片')
            url = "http://image.baidu.com/search/acjson?tn=resultjson_com&ipn=rj&ct=201326592&is=&fp=result&queryWord={0}&cl=2&lm=-1&ie=utf-8&oe=utf-8&adpicid=&st=-1&z=&ic=&hd=&latest=&copyright=&word={0}&s=&se=&tab=&width=&height=&face=&istype=&qc=&nc=1&fr=&expermode=&force=&pn=360&rn={1}&gsm=168&1587132748391=".format(parmas, i)
            yield scrapy.Request(url = url,callback=self.parse)

    def parse(self, response):
        # 因为他需要返回的值是列表，不需要.extract_first()
        imge_url = response.xpath('//img[@id="bigImg"]/@src').extract()
        # 提取标签内的所有文字，不包括属性值
        image_name = response.xpath('string(//h3)').extract_first()
        yield {
            "image_urls":imge_url,
            'image_name':image_name
        }
        next_url = response.xpath('//a[@id="pageNext"]/@href').extract_first()
        if next_url.find(".html") != -1:
        # /bizhi/8336_103435_2.html 会自动补全网址
            yield scrapy.Request(response.urljoin(next_url),callback=self.parse)
