Lines ← ⊜∘≠@\n. &fras "input.txt"

Gravity ← ⍜⍉≡(°□⊐/⊂ ⊜(□⊏⍖.) +1=@#.)
Score ← /+♭×⊃(¤+1⇌⇡⧻|=@O) ⍉

# Part 1
Score Gravity Lines

# Part 2
DoCycle ← ⍥(⍉⇌Gravity)4 ⊙(⊂:¤).
GetPhase ← ⬚¯1⊢⊚≡≍¤
Cycles ← 1000000000

# <Current> <History>
Lines ""
⍢(DoCycle|<0GetPhase)
⊃∘- ⊃(GetPhase|⋅⧻|⋅∘)
+⊃(◿:-:Cycles|∘)
Score ⊡
