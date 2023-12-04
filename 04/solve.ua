Lines ← ⊜∘≠@\n. &fras "input.txt"
Cards ← ≡(⊜(□⊜parse≠@ .)≠@|. ↘+2⊗@:.) Lines
CountWins ← /+∊ :∩⊔⍘[⊙∘]
ScoreWins ← ⌊ⁿ:2 -1 CountWins

# Part 1
/+ ≡ScoreWins Cards

# Part 2
CardExtras ← ⬚0↻: ⬚0↙: ↯⊙1
Wins ← ≡CountWins Cards
ExtraMatrix ← ≡CardExtras ⊙(:¯+1⇡.) :⧻. Wins

ExtraMatrix
⇡⧻.
∧(⍜⊡; ⊙:: × +1/+ ⊃(⊡⊙⍉)(⊡) ,,)
+ ⊃⧻(/+) /+
