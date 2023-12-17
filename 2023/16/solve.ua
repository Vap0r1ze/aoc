Lines ← ⊜∘≠@\n. &fras "input.txt"

DirDelta ← [¯°ℂ] ⁅ⁿ:e ÷2×π×i

Move ← ⬚0+ DirDelta ⊢⇌.
Turn ← (⍜(⊡2|◿4-): ⁿ:¯1|;)=2. ⊗:"/\\" ⊡:Lines ↙2.
IsOnBoard ← /↧♭⊟ ⊃(≥0|<△Lines) ↙2
Split ← (
  =1◿2-⊡2,
  ([∘]|⍜(⊢⇌⍉|◿4+¯1_1) ⊟.)
| [∘];
)=2. ⊗:"-|" ⊡:Lines ↙2.

IterBeams ← ↯¯1_3 ⊐/⊂ ≡((□[]|□ Split Turn) IsOnBoard. Move)
RunSim ← (
  : ↯:0⊂:4△Lines
  ⍜(☇1|≡/↥) ;⍢(⊃∘⍜⊡∵⋅1 ▽¬⊃⊡⊙∘ ⊝IterBeams|>0⧻)
)

# Part 1
/+♭ RunSim [0_¯1_0]

# Part 2
Edges ← (
  ¤⍜⊢∵⋅1 ∵⋅0 Lines
  ≡(+¤ ⊃(DirDelta◿4+1¯|⊚⍥(⍉⇌))) ⇡4
  ☇1 ≡≡(⊂:) ≡¤ ⇌⇡4
)
PoolItems ← ⬚¯1↯[NumProcs ¯1 3]Edges

/↥♭ ≡wait ≡spawn≡(/+♭ RunSim [∘]) PoolItems
