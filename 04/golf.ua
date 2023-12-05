Lines ← ⊜∘≠@\n. &fras "input.txt"
GetWins ← /+∊ ∩(⊜∘ ↯[⧻], 1_1_0) ⊃(↙-1)(↘+2)⊗@|. ↘+2⊗@:.

# Part 1
/+ ≡(⌊ⁿ:2-1 GetWins) Lines

# Part 2
CardExtras ← ⬚0↻: ⬚0↙: ↯⊙1
⊃(≡GetWins|⧻|¯+1⇡⧻|⇡⧻|⊚⧻) Lines
+⧻Lines /+ ∧(+× ⊙(+1 ⊡⊙.) CardExtras)
