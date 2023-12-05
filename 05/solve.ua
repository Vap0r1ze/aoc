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

# Part 2 (Bruteforce)
Unmappings ← ⊐≡(≡⍜(↙2|⇌))⇌Mappings
SeedRanges ← ↯¯1_2Seeds
IsSeed ← /↥ ≡(↧ ⊃(≥⊢|</+)) SeedRanges

# Search <Location> <MaxLocation>
Search ← (
  ¯1 # Generated Seed
  ⍢(⊢ MapAll Unmappings [∘]. +1 ;)(↧⊃(¬IsSeed|⋅≥))
  (⋅¯1|∘) IsSeed. ⊙⋅;
)
ChunkSize ← 1000
PoolSize ← NumProcs

StartTime ← now

# <FoundSeed> <Iteration>
¯1 0
⊙; ⍢(
  + ⇡PoolSize ×PoolSize .;
  -1 ×ChunkSize ⍉⊂:+1.¤
  ⊡⊢⊂:0⊚≥0. ≡wait ≡spawn(Search ⍘[⊙∘])
  ⊙(+1)
)(<0)

⊃(⌊÷60|◿60)⌊ -StartTime now
⊙(↙¯2⊂@0) ∩$"_"
&p $"Part 2 took _m_s"
