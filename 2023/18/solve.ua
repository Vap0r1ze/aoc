Blocks ← ⊜□¬⌕"\n\n". &fras "input.txt"
ParseItem ← ⊜⋕ ↧⊃(≥@0|≤@9).
ParseWorkflow ← ⍜(°□⊢⇌|↘¯1) ⊜□ ≠@{.
Items ← ⊜ParseItem ≠@\n. °□⊢⇌Blocks
Workflows ← ⊜ParseWorkflow ≠@\n. °□⊢Blocks
Labels ← ⊂{"R" "A"} ⊢⍉Workflows
ParseFlowStep ← (
  ⊜□ +1 ⍜⊡⋅¯1 ⊢⇌⊚. ∊:"<>:".
  ⍜°[⊙⊙⊙∘]⊓(⊗:"xmas"⊢|=@>⊢|⋕|⊗:Labels)
)
ParseFlow ← ⊂ ⊙([0 0 ∞ ∘] ⊗:Labels) ≡(ParseFlowStep °□) ⊃(↘¯1|⊢⇌) ⊜□ ≠@,.
Flows ← ≡⍜°□ParseFlow ⊢⇌⍉Workflows

StepDest ← (⋅¯1|∘)(<|>) ⊃⋅⊙∘∘ ⊡: ⊙(°[⊙⊙⊙∘])
Table ← ≡(⊂0_0) ⊠(⊡⊢⊚≥0. ≡StepDest ¤ ∩°□) Items Flows

# Part 1
Accepted ← ≡(⊙; ⍢(⊃⊡⋅∘|>1) ⊗□"in"Labels) Table
/+♭ ▽ Accepted Items
