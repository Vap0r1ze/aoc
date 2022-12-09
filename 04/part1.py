import sys

Direction = {
  "R": 1 + 0j,
  "U": 1j,
  "D": -1j,
  "L": -1 + 0j,
}
visited = set()

head = 0j
tail = 0j
for line in sys.stdin:
  if line == "\n":
    break
  dir = Direction[line[0]]
  for _ in range(int(line[2:])):
    head += dir
    if abs(head - tail) >= 2:
      if (head.real != tail.real and head.imag != tail.imag):
        if (abs(head.real - tail.real) == 1):
          tail = head.real + tail.imag * 1j
        else:
          tail = tail.real + head.imag * 1j
      tail += dir
    visited.add(tail)

print(len(visited))
