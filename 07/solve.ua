Table ← ⊜(⊜□≠@ .)≠@\n. &fras "input.txt"
⊓(≡°□|≡⋕) °⊟ ⍉ Table
Cards ←
Bids ←

# Part 1
Parse ← ⊗:"23456789TJQKA"
HandType ← ⊗:5_7_9_11_13_17_25 /+♭=¤.
Ranks ← +1 ⍏⍏≡(⊂HandType.) Parse Cards
/+× Ranks Bids

# Part 2
Parse ← ⊗:"J23456789TQKA"
HandType ← ⊗:5_7_9_11_13_17_25 /+⬚1↙5/+=¤. ▽≠0.
Promotions ← ⍜⍉(⊂⇡⧻⊢.) ⬚∞[1_3_5_6 3_5_6 4 5_6 [] 6 []]
MaxHandType ← (
  ≍⊚5. # Is JJJJJ?
  (⊡:Promotions ⊟⊃HandType(/+=0)|6)
)
Ranks ← +1 ⍏⍏≡(⊂MaxHandType.) Parse Cards
/+× Ranks Bids
