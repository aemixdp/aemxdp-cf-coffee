# http://codeforces.ru/problemset/problem/6/C

readline()
ts = readline().split(' ').map((x) -> parseInt(x))

ln = 1
rn = 0
li = 1
ri = ts.length - 1
lt = ts[0]
rt = 0

while 1
  while rt < lt && li <= ri
    rt += ts[ri--]
    rn++
  while lt <= rt && li <= ri
    lt += ts[li++]
    ln++
  if li > ri
    break

print("#{ln} #{rn}")
