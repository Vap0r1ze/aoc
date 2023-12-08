Lines ← ⊜□≠@\n. &fras "input.txt"
Turns ← =@R°□⊢ Lines
Nodes ← ≡(⊜∘ ↧⊃(≥@A|≤@Z). °□) ↘1 Lines
Find ← ⊢⊚≡(≍:⊢)Nodes ¤

# Part 1
Init ← Find "AAA"
Iter ← ⊙⊙(+1) Find ⊃(⊡+1⊢:|↻1;) ⊡:Nodes
IsEnd ← ≍"ZZZ" ⊢⊡:Nodes
;; ⍢(Iter)(¬IsEnd) Init Turns 0

# Part 2
Starts ← ⊚≡(=@A⊢⇌⊢) Nodes
IsEnd ← =@Z⊢⇌ ⊢⊡:Nodes
≡wait ≡spawn(;; ⍢(Iter)(¬IsEnd) ⊙(Turns 0)) Starts
×/×⊃÷∘⧻Turns
