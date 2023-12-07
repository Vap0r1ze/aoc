Code ← ⊜parse≠@,. &fras "input.txt"

RunInstruction ← +4: ⍜⊡; ⊃(:⋅⊙∘)(∘) (∘|+|×) ⊙⊃(⍘[⊙∘] ⊏ ⊙. ↙2)(⊡2) ⊃(⊡0)(↘1) ⊙: ↙4↘,,
FixCode ← ⍜(⊏1_2);

# Part 1
RunCode ← ⊡0; ⍢(RunInstruction)(≠99⊡,,) 0 FixCode Code
RunCode 12_2

# Part 2 (Brute Force)
SearchFor ← 19690720
-1; ⍢(≠SearchFor RunCode [⊙∘]⊃(⌊÷)◿100 ⊃∘(+1) ;)(∘) 1 9000
