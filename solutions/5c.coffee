# http://codeforces.ru/problemset/problem/5/C

s = readline()
match = new Array(s.length)
max_len = 0
max_count = 0
istack = []

for i, c of s
  if c == '('
    istack.push(+i)
  else if istack.length > 0
    mlp = istack.pop()
    min_i = if match[mlp-1]? then match[mlp-1] else mlp
    match[+i] = min_i
    len = +i - min_i + 1
    if len > max_len
      max_len = len
      max_count = 1
    else if len == max_len
      max_count++

if max_count == 0
  print("0 1")
else
  print(max_len + ' ' + max_count)
