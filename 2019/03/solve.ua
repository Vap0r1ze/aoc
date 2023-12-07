Lines ← ⊜(□⊜□≠@,.)≠@\n. &fras "input.txt"

# eg: ParseStep "D3" -> [¯3 0]
ParseStep ← [⍘ℂ] ×⁅ⁿ:eℂ:0×η ⊓(⊗⊙"RULD")(parse) ⊃(⊡0)(↘1)

RawWires ← ⊐∵≡ParseStep Lines

Segments ← ⊐≡(◫2⊂) ¤0_0 ⊐≡(\+) RawWires
IsSorted ← ↥ ∩(/↧=) ⇌,, ⇡⧻. ⍏
CalcIntersection ← × ⊙(/↧ ♭ ≡(≡IsSorted ⍉ ⍜(↻¯1)⊂:¤)¤) . /+ ≡(× ⊙= . ⍘[⊙∘]) . [⊙∘]
Intersections ← ⊠(CalcIntersection) ∩⊔ ⍘⊟ Segments

# Part 1
⊢ ⊏⍏. ▽≠0. ≡(/+) ☇1 ⌵ Intersections

# Part 2
IntersectionIndexes ← ⊚ ↧1 ⍜(☇1)(≡(/+)) ⌵ Intersections
≡⊡ IntersectionIndexes ¤⊠([⊙∘]) ∩⊔ ⍘⊟ Segments
