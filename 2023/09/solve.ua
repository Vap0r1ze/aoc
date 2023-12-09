Histories ← ⊜(⊜⋕≠@ .)≠@\n. &fras "input.txt"

AddDiff ← ⊂: ⍜↙(≡⋅0) ⧻, -↻¯1. ⊢⇌.
Diffs ← ≡(□⍢(AddDiff|/↥≠0⊢⇌)¤) Histories
Extend ← ⍜(⇌≡⇌⍉|⊂\+⊢.)

# Part 1
/+ ≡(⊢⇌⊢ Extend°□) Diffs

# Part 2
Prepend ← ⍜(≡⇌⍉|⊂\-⊢.)
/+ ≡(⊢⊢ Prepend ≡↻⇡⧻. °□) Diffs
