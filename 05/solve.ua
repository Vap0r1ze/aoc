Lines ← ⊜□≠@\n. &fras "input.txt"
Seeds ← ⊜parse≠@ . ↘+2⊗@:. ⊔⊡0Lines
Mappings ← ⊜(□≡(⊜parse≠@ .⊔))⊐≡(¬∊@:). ↘2Lines

Map ← ≡((¯1⋅⋅;|+⊙⋅(⊡0)) ↧⊃(>|≥0|∘) ⊃(⊙⋅(⊢⇌)|⋅⊙∘) -⊡1⊙., ⊙∘)
Locations ← ∧(≡(⊢▽≥0. ⊂:⊙Map.) :¤⊔) Mappings Seeds

# Part 1
⊢⊏⍏. Locations

# WTF PART 2???
