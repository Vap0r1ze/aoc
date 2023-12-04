Board ← ⊜∘≠@\n. &fras "input.txt"

# Helpers
Trim ← ↘1_1↘¯1_¯1
Border ← ⍜(Trim); ↯⊙: +2△.: # <border element> <matrix>
IsDigit ← ↧⊃(≥@0)(≤@9)
IsSymbol ← ↧⊃(¬IsDigit|≠@.)
FindOnes ← >⬚0↻¯1.

# Convolve
Kernel ← ↧⊃(IsDigit⊡1_1)(
  ↧1/+ ♭ ∵IsSymbol # Has adjacent symbol?
)
PartMask ← ≡FindOnes ⍜(☇2)(≡Kernel) ◫3_3 Border @. Board
ParseRowParts ← ⊔⊐/⊂ ⊜(□↯(⊃⧻0|⊃⧻parse) IsDigit⊢.) +1IsDigit.
PartBoard ← ≡ParseRowParts Board

# Part 1
/+♭ × PartBoard PartMask

# Part 2
GearKernel ← (
  # Check if gear
  ↧⊃(=@*⊡1_1)(
    =2 /+ FindOnes IsDigit /(⊂⊂:@.) # Touches 2 numbers?
  ).
  (⊡1_1|⋅@G) # If gear set to @G
)
GearedBoard ← ⍜(☇2)(≡GearKernel) ◫3_3 Border @. Board
GearsAndParts ← ⍜⊡≡⋅@G ⊚ =@G GearedBoard ∵□PartBoard
RatioKernel ← ×⊃(=@G⊡1_1)(
  /× ▽FindOnes>0. ≡⊔ /(⊂⊂:0) ⍜⊡≡⋅0 ⊚∵⊔=@G.
)

/+♭ ⍜(☇2)(≡RatioKernel) ◫3_3 Border 0 GearsAndParts
