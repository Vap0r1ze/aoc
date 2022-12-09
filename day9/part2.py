import sys

Direction = {
  "R": 1 + 0j,
  "U": 1j,
  "D": -1j,
  "L": -1 + 0j,
}
visited = set()
knots = [0j] * 10

for line in sys.stdin:
  if line == "\n":
    break
  dir = Direction[line[0]]
  for _ in range(int(line[2:])):
    knots[0] += dir
    for i in range(len(knots) - 1):
      head, tail = knots[i:i + 2]
      offset = head - tail
      if abs(offset) >= 2:
        tail += complex((offset.real > 0) - (offset.real < 0), (offset.imag > 0) - (offset.imag < 0))
      knots[i:i + 2] = head, tail
    visited.add(knots[-1])

print(len(visited))
