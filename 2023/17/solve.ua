ParseHex ← /+ ×ⁿ:16 ⇡⧻. ⇌⊗:"0123456789abcdef"
ParseLine ← ⍜°[⊙⊙∘]⊓(⊗:"RULD"⊢|⋕|□↘¯1↘2°□) ⊜□≠@ .
Items ← ⊜ParseLine≠@\n. &fras "input.txt"

Det ← /-⇌×⇌≡°ℂ
CalcArea ← (
  +⊃(
    \+ ≡(× ⁅ⁿ:e×i×η °⊟) # Complex vertices
    ÷2 ⌵/+ ≡Det ◫2 ⊂:0  # Shoelace formula
  | /+ ≡⊡1 ▽≡(∊:2_3 ⊢). # Left/Down edges
  )
  +1 # Start corner
)

# Part 1
Steps ← ≡(≡°□↙2) Items
CalcArea Steps

# Part 2
Steps ← ≡(⊟: ⊓(ParseHex|◿4×3⋕) ⊃(↘¯1|⊢⇌) °□⊡2) Items
CalcArea Steps
