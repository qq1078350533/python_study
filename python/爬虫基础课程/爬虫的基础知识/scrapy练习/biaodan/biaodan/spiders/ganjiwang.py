# -*- coding: utf-8 -*-
import scrapy
import re

class GanjiwangSpider(scrapy.Spider):
    name = 'ganjiwang'
    allowed_domains = ['ganji.com']
    start_urls = ['https://passport.ganji.com/login.php']

    def parse(self, response):
        # 需要把hash_code传给parse_info里面去
        hash_code = re.findall(r'"__hash__":"(.*?)"',response.text)
        img_url = response.xpath('//*[@id="login-content"]/div/div/div[1]/div[2]/form[1]/div[4]/label/img/@src').extract_first()
        img_url = 'https://passport.ganji.com/ajax.php?dir=captcha&module=login_captcha'
        yield scrapy.Request(img_url,callback=self.parse_info,meta={'hash_code':hash_code})

    def parse_info(self, response):
        hash_code = response.request.meta['hash_code']
        with open('./验证码.jpg','wb') as f:
            f.write(response.body)

        code = input('请输入验证码：')
        form_data = {
                        'username': 'snackdeng',
                        'password': 'yijiaren',
                        'setcookie': '0',
                        'checkCode': code,
                        'next': '/',
                        'source': 'passport',
                        ' __hash__': hash_code
        }
        login_url = 'https://passport.ganji.com/login.php'
        yield scrapy.FormRequest(login_url,callback=self.after_login,formdata=form_data)

    def after_login(self,response):
        print(response.text)