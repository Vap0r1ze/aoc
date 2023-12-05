ParseCube ← [⊙∘] ⊃(parse↙)(⊗:"rgb" ⊡+1) ⊗@ .
ParseGame ← ⊜ParseCube¬+↻¯1.∊:",;". ↘+2⊗@:.

# GameID [Part1 Part2] FD
0 [0 0] &fo"input.txt"

⍢(
  ParseGame
  ⊕(/↥) ⍘[⊙∘] ⇌⍉         # Get Maximums
  ⊙(+1)                  # Increase Game ID
  ×⊙, ⊃(/×≤12_13_14)(/×) # Part 1 and 2
  ⊙+:[⊙∘]                # Add to sum
)(>0⧻. &ru @\n :⊙,)
⊙;;;
