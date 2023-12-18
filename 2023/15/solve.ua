Lines ← ⊜□≠@,. &fras "input.txt"

# Part 1
Hash ← ∧(◿256×17+) ⊙0 -@\0
/+ ⊐≡Hash Lines

# Part 2
GetLabel ← ▽≥@a.
GetValue ← (0|⋕)>@0.⊡¯1
Lookup ← ⊝ ≡⍜°□GetLabel Lines
Steps ← ≡([⊃(Hash GetLabel|⊗:Lookup □GetLabel|GetValue)] °□) Lines

RunStep ← ⊃(
  ⍜⊡;
| ⊃(<∩± ⊃(⋅⋅∘|⊡⊙∘)|⊙⋅⋅∘)
  (⋅∘|⍜⊡; ⊙⊃(∘|+1/↥♭))
) ⊃(↙2|:⊡2)
∧RunStep Steps .↯[256 ⧻Lookup]0 # <lens matrix> <last-updated matrix>
⊙≡(⍜▽(+1⍏⍏) ≠0.) ⊃(∘|×≠0)       # <lens matrix> <slot matrix>
+1×⇡⧻.↯:1△.                     # <box matrix> <lens matrix> <slot matrix>
/+♭××
