// i = {url:process.argv[2]};
i = {url:"https://www.toutiao.com/toutiao/api/pc/feed/?max_behot_time=1606377586&category=__all__&utm_source=toutiao&widen=1&tadrequire=true"};
a = require('./test01.js');
n = a.sign;
console.log(n.call(a,i));