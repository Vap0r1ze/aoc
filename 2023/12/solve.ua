Table ← ⍜(⊢⇌⍉|≡(□⊜⋕≠@,.°□)) ⊜(⊜□≠@ .)≠@\n. &fras "input.txt"

# Credit to u/kaa-the-wise
Fn ← (
  ∩°□°⊟                         # <row> <parts>
  ⊃(≠@.|≠@#)$"._."              # <# mask> <. mask> <parts>
  \(×⊃⋅∘+)                      # <contiguous # counts> <. mask> <parts>
  ⊃(∘|×↻1):                     # <. mask> <contiguous & . mask> <parts>
  ⊃(⊢|⋅∘|∘) ⍜⇌\(×⊃↥⋅/↥)× ⊠=.⇡⧻. # <init state> <contiguous> <. matrix> <parts>
  ⊃(⋅⋅⋅∘|⊙⊙∘)                   # <parts> <state> <contiguous> <. matrix>
  ∧(
    ⊃(⊙∘|≥⊙⋅.)
    ×⬚0↻¯
    ⬚0↻¯1
    /+×⊙,
  )
  ⊢⇌ ⊙⋅;
)

# Part 1
∧(+Fn) Table 0

# Part 2
TableTwo ← ≡⍜(∩°□°⊟)⊓(/(⊂⊂:@?)↯5|↯×5△.) Table
∧(+Fn) TableTwo 0
