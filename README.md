[Uiua]: https://www.uiua.org/
[katlyn]: https://github.com/katlyn
[TypeScript]: https://www.typescriptlang.org/

# Advent of Code 2023

I think I'm going to spend most of this year's AoC learning [Uiua].
Most solutions will read input from `input.txt`, other it will expect it from `stdin`.

`solve.xx` files will be my first solve for a given language,
and `golf.xx` will be my attempt at optimizing the solution.

## Day Log
Gonna use bold to mark things I want to do.

1. [Uiua] [`solve.ua`](/01/solve.ua): was pretty easy to do. Only issue I had with this day is that stupid edge case where numbers can overlap. I wish the examples made it clear that it was a requirement.
2. [Uiua] [`solve.ua`](/02/solve.ua): parsing at first was so hard, Uiua parsing is generally not too fun. I loved the math part tho it was fun. I realized that my parsing could have been simpler afterwards [`golf.ua`](/02/golf.ua). I also made a version ([`big.ua`](/02/big.ua)) that could handle [`input_large.txt`](/02/input_large.txt) (made by [katlyn]) by reading line by line.
3. [Uiua] [`solve.ua`](/03/solve.ua): THIS ONE WAS SO FUN, I loved doing [convolutions](https://www.youtube.com/watch?v=KuXjwB4LzSA) love love love love. Love you Uiua. This one ran kinda slow, **I want to optimize it somehow**, maybe via multithreading.
4. [Uiua] [`solve.ua`](/04/solve.ua): Parsing was so normal here, the numbers were equal length, each list had a unique set of numbers, didn't even need to parse them as numbers. **I want to make a visualizer for my solution**.
5. [Uiua] [`solve.ua`](/05/solve.ua), [TypeScript]() [`solve.ts`](/05/solve.ts): Part 1 was cool, part 2 was MEAN. I was not about to implement ranges in Uiua, so I did part 2 in TypeScript. My Uiua part 2 is a theoretical bruteforce that I never ran, I estimated it would take ~40 minutes for my input on my 8 threads. It starts at the minumum possible destination, and does a linear search by doing the reverse mapping and checking if the resulting seed is in the input ranges.
