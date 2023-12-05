Board ← ⊜∘≠@\n. &fras "input.txt"

IsDigit ← ↧⊃(≥@0)(≤@9)
IsSymbol ← ↧⊃(¬IsDigit|≠@.)

ParseRowParts ← ⊔⊐/⊂ ⊜(□↯(⊃⧻0|⊃⧻parse) IsDigit⊢.) +1IsDigit.
PartBoard ← ≡ParseRowParts Board

Border ← ⬚∘(↙¯+1△.↙+1△.)

SymbolKernel ← (
  IsSymbol ⊡1_1.
)
# Border 0 PartBoard
# Border @. Board
# ⍜(∩(☇2))(≡(0;;dump∘)) ∩(◫3_3)

# SymbolKernel
