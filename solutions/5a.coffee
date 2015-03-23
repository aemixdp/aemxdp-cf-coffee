# http://codeforces.ru/problemset/problem/5/A

n = 0
t = 0

while line = readline()
  switch line[0]
    when '+' then n++
    when '-' then n--
    else
      t += n * (line.length - line.indexOf(':') - 1)

print(t)