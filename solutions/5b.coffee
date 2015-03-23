# http://codeforces.ru/problemset/problem/5/B

lines = []
maxLen = 0

chars = (n, c) ->
  new Array(n + 1).join(c)

while typeof(line = readline()) == 'string'
  lines.push(line)
  maxLen = Math.max(line.length, maxLen)

hr = chars(maxLen + 2, '*')
incl = false

print(hr)

for line in lines
  rlpad = maxLen - line.length
  pad = Math.floor(rlpad / 2)
  padstr = chars(pad, ' ')
  if rlpad % 2
    lpad = pad
    rpad = pad
    if incl
      print('*' + padstr + ' ' + line + padstr + '*')
      incl = false
    else
      print('*' + padstr + line + padstr + ' ' + '*')
      incl = true
  else
    print('*' + padstr + line + padstr + '*')

print(hr)