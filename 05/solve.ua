Lines ← ⊜□≠@\n. &fras "input.txt"
Seeds ← ⊜parse≠@ . ↘+2⊗@:. ⊔⊡0Lines
Mappings ← ⊜(□≡(⊜parse≠@ .⊔))⊐≡(¬∊@:). ↘2Lines

Map ← ≡(
  -⊡1⊙.,
  ⊃(⊙⋅(⊢⇌)|⋅⊙∘)
  ↧⊃(>|≥0|∘)
  (¯1⋅⋅;|+⊙⋅(⊡0))
)
MapAll ← ∧(≡(⊢▽≥0. ⊂:⊙Map.) :¤⊔)
Locations ← MapAll Mappings Seeds

# Part 1
⊢⊏⍏. Locations

# WTF PART 2???
