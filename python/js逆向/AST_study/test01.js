/*  * 加密工具已经升级了一个版本，目前为 sojson.v5 ，主要加强了算法，以及防破解【绝对不可逆】配置，耶稣也无法100%还原，我说的。;  * 已经打算把这个工具基础功能一直免费下去。还希望支持我。  * 另外 sojson.v5 已经强制加入校验，注释可以去掉，但是 sojson.v5 不能去掉（如果你开通了VIP，可以手动去掉），其他都没有任何绑定。  * 誓死不会加入任何后门，sojson JS 加密的使命就是为了保护你们的Javascript 。  * 警告：如果您恶意去掉 sojson.v5 那么我们将不会保护您的JavaScript代码。请遵守规则  * 新版本: https://www.jsjiami.com/ 支持批量加密，支持大文件加密，拥有更多加密。 */
var encode_version = 'sojson.v5', jrkqk = '',
    _0x3318 = ['eMO1woTDnRU=', '6L6h5pmt5LuD5Lq85Lq857Gi5Ymtwqh55pCG5LyT44OQ', '56us6ZaG5o2S6auk57ufDuKDp8KuwqzliYHlrpbig7NT5ZCXwrrigaJPw5bopp3lrb7ig4zCt+++heS/peWMheS+leeYlCB8w7bjga4=', 'Z3rCqsKQ', 'wq12EsOow7A=', 'wq3Di8Kpw63CisKZwr4=', 'RMOdwpc=', 'NTREw4FsCMKIQsKB', '54qF5p+/5Y6E772jw5LDkeS8meWsjOafneW+uOepq++9pei9v+itk+aXt+aMh+aKgOS7rOealOW3seS8vw==', '5Yis6Zia54ms5p225Y6H772nKMO85L2n5a+b5p+W5b2756iM', 'VMOBwofDtDscbsOBw7k=', 'eAglw6V9', 'dFUCw7LCsA==', 'wqzCij0=', '5YuX6Zip54ig5p6p5Y+J772cwqbDpOS+guWvgeadpOW+reermQ=='];
(function (_0x1cab0b, _0x9fc93e) {
    var _0x50aee6 = function (_0x5f6b93) {
        while (--_0x5f6b93) {
            _0x1cab0b['push'](_0x1cab0b['shift']());
        }
    };
    _0x50aee6(++_0x9fc93e);
}(_0x3318, 0x12d));
var _0x4d94 = function (_0x387cf0, _0x46d6a3) {
    _0x387cf0 = _0x387cf0 - 0x0;
    var _0x1c7cd3 = _0x3318[_0x387cf0];
    if (_0x4d94['initialized'] === undefined) {
        (function () {
            var _0x9672bc = typeof window !== 'undefined' ? window : typeof process === 'object' && typeof require === 'function' && typeof global === 'object' ? global : this;
            var _0x47acfd = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
            _0x9672bc['atob'] || (_0x9672bc['atob'] = function (_0x4f114b) {
                var _0xda79c1 = String(_0x4f114b)['replace'](/=+$/, '');
                for (var _0x2456af = 0x0, _0xc64c02, _0x5e6923, _0x48f516 = 0x0, _0x448f43 = ''; _0x5e6923 = _0xda79c1['charAt'](_0x48f516++); ~_0x5e6923 && (_0xc64c02 = _0x2456af % 0x4 ? _0xc64c02 * 0x40 + _0x5e6923 : _0x5e6923, _0x2456af++ % 0x4) ? _0x448f43 += String['fromCharCode'](0xff & _0xc64c02 >> (-0x2 * _0x2456af & 0x6)) : 0x0) {
                    _0x5e6923 = _0x47acfd['indexOf'](_0x5e6923);
                }
                return _0x448f43;
            });
        }());
        var _0x15dca8 = function (_0xa971bc, _0x5e580d) {
            var _0x2a7b0e = [], _0x18c27c = 0x0, _0x8cce7, _0x21fe1e = '', _0x21ee82 = '';
            _0xa971bc = atob(_0xa971bc);
            for (var _0x465e88 = 0x0, _0x1826b5 = _0xa971bc['length']; _0x465e88 < _0x1826b5; _0x465e88++) {
                _0x21ee82 += '%' + ('00' + _0xa971bc['charCodeAt'](_0x465e88)['toString'](0x10))['slice'](-0x2);
            }
            _0xa971bc = decodeURIComponent(_0x21ee82);
            for (var _0x559b8b = 0x0; _0x559b8b < 0x100; _0x559b8b++) {
                _0x2a7b0e[_0x559b8b] = _0x559b8b;
            }
            for (_0x559b8b = 0x0; _0x559b8b < 0x100; _0x559b8b++) {
                _0x18c27c = (_0x18c27c + _0x2a7b0e[_0x559b8b] + _0x5e580d['charCodeAt'](_0x559b8b % _0x5e580d['length'])) % 0x100;
                _0x8cce7 = _0x2a7b0e[_0x559b8b];
                _0x2a7b0e[_0x559b8b] = _0x2a7b0e[_0x18c27c];
                _0x2a7b0e[_0x18c27c] = _0x8cce7;
            }
            _0x559b8b = 0x0;
            _0x18c27c = 0x0;
            for (var _0x325076 = 0x0; _0x325076 < _0xa971bc['length']; _0x325076++) {
                _0x559b8b = (_0x559b8b + 0x1) % 0x100;
                _0x18c27c = (_0x18c27c + _0x2a7b0e[_0x559b8b]) % 0x100;
                _0x8cce7 = _0x2a7b0e[_0x559b8b];
                _0x2a7b0e[_0x559b8b] = _0x2a7b0e[_0x18c27c];
                _0x2a7b0e[_0x18c27c] = _0x8cce7;
                _0x21fe1e += String['fromCharCode'](_0xa971bc['charCodeAt'](_0x325076) ^ _0x2a7b0e[(_0x2a7b0e[_0x559b8b] + _0x2a7b0e[_0x18c27c]) % 0x100]);
            }
            return _0x21fe1e;
        };
        _0x4d94['rc4'] = _0x15dca8;
        _0x4d94['data'] = {};
        _0x4d94['initialized'] = !![];
    }
    var _0x281020 = _0x4d94['data'][_0x387cf0];
    if (_0x281020 === undefined) {
        if (_0x4d94['once'] === undefined) {
            _0x4d94['once'] = !![];
        }
        _0x1c7cd3 = _0x4d94['rc4'](_0x1c7cd3, _0x46d6a3);
        _0x4d94['data'][_0x387cf0] = _0x1c7cd3;
    } else {
        _0x1c7cd3 = _0x281020;
    }
    return _0x1c7cd3;
};
var a = {}, b = {};


(function (_0x117d09, _0x110647) {
    var _0x4845bf = {'XhuzS': _0x4d94('0x0', 'W7bQ'), 'iUTPo': _0x4d94('0x1', ']2T3')};
    _0x117d09[_0x4d94('0x2', 'WIC5')] = _0x4845bf['XhuzS'];
    _0x110647['adinfo'] = _0x4845bf[_0x4d94('0x3', 'Wka7')];
    _0x110647[_0x4d94('0x4', 'D8d!')] = '如果您的JS里嵌套了PHP，JSP标签，等等其他非JavaScript的代码，请提取出来再加密。这个工具不能加密php、jsp等模版内容';
}(a, b));
;(function (_0x182aaa, _0x4c3590, _0x55392e) {
    var _0x4b40d0 = {
        'gTfic': _0x4d94('0x5', 'oqkX'), 'GXIQH': function _0x38020c(_0x65ebe0, _0x2dc82b) {
            return _0x65ebe0 === _0x2dc82b;
        }, 'xyVxG': _0x4d94('0x6', 'JsgM'), 'qeHKL': function _0x3e069c(_0x501f24, _0x41e6d1) {
            return _0x501f24 + _0x41e6d1;
        }, 'EkYag': _0x4d94('0x7', '^7hL'), 'YZgLH': _0x4d94('0x8', 'g@wB')
    };
    _0x55392e = 'al';
    try {
        _0x55392e += _0x4b40d0['gTfic'];
        _0x4c3590 = encode_version;
        if (!(typeof _0x4c3590 !== _0x4d94('0x9', 'oqkX') && _0x4b40d0[_0x4d94('0xa', 'M*Wm')](_0x4c3590, _0x4b40d0['xyVxG']))) {
            _0x182aaa[_0x55392e](_0x4b40d0[_0x4d94('0xb', '7glO')]('删除', _0x4b40d0['EkYag']));
        }
    } catch (_0x781e53) {
        if ('aYN' === _0x4d94('0xc', '^7hL')) {
            _0x182aaa[_0x55392e](_0x4d94('0xd', '9z79'));
        } else {
            _0x182aaa[_0x55392e](_0x4b40d0[_0x4d94('0xe', 'oqkX')]);
        }
    }
}(window));
;encode_version = 'sojson.v5';


