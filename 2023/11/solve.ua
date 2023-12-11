Space ← ⊜∘≠@\n. &fras "input.txt"

Expand ← =0 ≡/+ ≠@.
StrictTri ← ⊠(<).⇡⧻
Expansions ← ⊟⊃(⍜⍉Expand|Expand) Space

GetExpansions ← (
  # <Point A> <Point B>
  ⍉⍜°⊟⊃↧↥ ⊟                 # Get min/max corners
  ⇌≡(⍜(↘⊙↙|≡⋅1)°⊟:⊚) △Space # Get axis spans
  /+♭ ×Expansions           # Intersect axis spans with expansions, sum
)
GetDists ← (
  # <Space> <ExpansionCount>
  .⊚=@#                       # Get galaxy points
  ⊠(+⊙×⊃(/+⌵-|GetExpansions)) # Get their dists & expansion counts
  ×StrictTri.                 # Zero duplicates & identities
)

# Part 1
/+♭ GetDists Space 1

# Part 2
/+♭ GetDists Space 999999
