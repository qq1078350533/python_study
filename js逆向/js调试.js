function l(t) {
        void 0 === t && (t = 28),
        t = t || 10;
        for (var e = "ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz0123456789", o = e.length, n = "", r = 0; r < t; r++)
            n += e.charAt(Math.floor(Math.random() * o));
        return n
    }

var o = "_fasTraceId=" + (new Date).getTime() + l(8) + "_" + e;

console.log(o)