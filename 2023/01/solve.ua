Lines ← ⊜□≠@\n. &fras "input.txt" # Lines

GetDigits ← × ⊙(-@0) ≤@9.°□
GetValue ← + ×10 ⊃⊢(⊢⇌) ▽≠0.

# Part 1
/+ ≡(GetValue GetDigits) Lines

# Part 2
Words ← {"zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
GetNumbers ← /+ ≡(×⊗:Words⊙(⌕∩°□).)Words
/+ ≡(GetValue +⊃(GetNumbers)(GetDigits)) Lines
