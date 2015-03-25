# http://codeforces.ru/problemset/problem/6/B

input = readline().split(' ')
[n, m, c] = [parseInt(input[0]), parseInt(input[1]), input[2]]
board = []

for i in [1..n]
  board.push(readline())

done = false
[i, j] = [0, 0]

for i in [0...n]
  for j in [0...m]
    if board[i][j] == c
      done = true
      break
  break if done

[w, h] = [1, 1]

while board[i][j+w] == c
  w++

while board[i+h] && board[i+h][j] == c
  h++

neighbours = {}

for y in [i...i+h]
  neighbours[board[y][j-1] || '.'] = true
  neighbours[board[y][j+w] || '.'] = true
for x in [j...j+w]
  neighbours[board[i-1][x]] = true if board[i-1]
  neighbours[board[i+h][x]] = true if board[i+h]

count = 0
for k of neighbours
  if k != '.'
    count++

print(count)