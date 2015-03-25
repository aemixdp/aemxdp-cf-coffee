# http://codeforces.ru/problemset/problem/5/D

UniAccel =
  # displacement during change of velocity from v0 to v1 with acceleration a
  vel_change_disp: (v0, v1, a) ->
    (v1 * v1 - v0 * v0) / (2 * a)
  # time needed to perform displacement s with start velocity v0 and acceleration a
  disp_time: (s, v0, a) ->
    (Math.sqrt(v0 * v0 + 2 * a * s) - v0) / a

[a, v] = readline().split(' ').map (x) -> parseInt x
[l, d, w] = readline().split(' ').map (x) -> parseInt x

sw = UniAccel.vel_change_disp(0, w, a)
sv = UniAccel.vel_change_disp(0, v, a)

if w > v or sw >= d
  if sv > l
    print(UniAccel.disp_time(l, 0, a).toFixed(5))
  else
    print((v / a + (l - sv) / v).toFixed(5))
else
  sf = UniAccel.vel_change_disp(w, v, a)
  tf = 0
  r = l - d
  if sf > r
    tf = UniAccel.disp_time(r, w, a)
  else
    tf = UniAccel.disp_time(sf, w, a) + (r - sf) / v
  su = UniAccel.vel_change_disp(0, v, a)
  sd = UniAccel.vel_change_disp(v, w, -a)
  sa = su + sd
  if sa <= d
    sc = d - sa
    tu = UniAccel.disp_time(su, 0, a)
    td = UniAccel.disp_time(sd, v, -a)
    print((tu + sc / v + td + tf).toFixed(5))
  else
    vb = Math.sqrt(a * d + (w * w) / 2)
    su = UniAccel.vel_change_disp(0, vb, a)
    sd = UniAccel.vel_change_disp(vb, w, -a)
    tu = UniAccel.disp_time(su, 0, a)
    td = UniAccel.disp_time(sd, vb, -a)
    print((tu + td + tf).toFixed(5))
