t ← ⊜(□⊜□≠,@ )≠,@\n ▽¬∊,"=>," &fras"input.txt"
n ← ⊐≡(⊐≡parse⇌▽¬◿2⇡⧻.)t
c ← ⊐≡(⇌▽◿2⇡⧻.)t

i ← ⊂□"ORE"≡⊢c # Chemical names
l ← ⊂0≡(⊡0⊔)n  # Chemical batch sizes
m ← ⬚0↙¯⧻i ⊐≡(⍜⊏;:⊚) ⧻i ⊐≡(⊗:i)c ⊐≡⍜⊢¯n

Iter ← +/+≡×m ⌈⊂0↘1≡÷l.
OreFromFuel ← ⊡0 ⍢Iter(¬/↧≤0↘1.) ×⍜(⊡⊗□"FUEL"i)(1;) ⊚⧻i

# Part 1
OreFromFuel 1

# Part 2 (Binary Search)
MaxOre ← 1000000000000
⊡0 ⍢(⍜⊡;⊙: >MaxOre OreFromFuel .⌊÷2+⍘⊟.)(≠1-⍘⊟.) [0 MaxOre]
