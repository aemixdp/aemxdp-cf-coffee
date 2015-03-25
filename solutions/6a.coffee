# http://codeforces.ru/problemset/problem/6/A

# triangle inequality checker
check = (a, b, c) ->
  if a + b == c || a + c == b || b + c == a
    1
  else if a + b > c and a + c > b and b + c > a
    2
  else
    0

[a,b,c,d] = readline().split(' ').map((x) -> parseInt(x))

tri = false
seg = false
for [x,y,z] in [[a,b,c], [d,b,c], [a,d,c], [a,b,d]]
  switch check(x, y, z)
    when 1 then seg = true
    when 2 then tri = true

if tri
  print("TRIANGLE")
else
  print(if seg then "SEGMENT" else "IMPOSSIBLE")
