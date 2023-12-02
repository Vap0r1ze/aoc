Input ← &fras "input.txt"
ParseCube ← [⊙∘] ⊃(parse↙)(⊗:"rgb" ⊡+1) ⊗@ .
ParseGame ← □⊜ParseCube¬+↻¯1.∊:",;". ↘+2⊗@:.
Games ← ⊜ParseGame≠@\n. Input
Counts ← ⊐≡(⊕(/↥) ⍘[⊙∘] ⇌⍉) Games

# Part 1
UpperBound ← [12 13 14]
/+ +1⊚ =3 ≡(/+ ≤UpperBound) Counts

# Part 2
/+ ≡(/×) Counts
