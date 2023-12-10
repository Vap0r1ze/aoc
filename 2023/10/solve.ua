Maze ← ⊜∘≠@\n. &fras "input.txt"
StartPos ← ⊢⊚=@S Maze
DirDelta ← [¯°ℂ] ⁅ⁿ:e ÷2×π×i
ConnTable ← ≡(⊂⊃(⊡:"-|"◿2|↙2↻:"J7FL")) ⇡4

StartConns ← ≡(
  ⊡:Maze +StartPos DirDelta .
  ∊ ⊙(⊡:ConnTable)
) ⇡4
TakeStep ← (
  ⊃(⊙⊙∘|⍜⊡⋅1 ⊙⋅⋅∘)
  +DirDelta,
  ⊃∘((◿4-: ⁿ:¯1|⋅∘)=4. ⊗:"J7FL" ⊡:Maze)
  ⊙⊙(+1)
)

# Part 1
# <Pos> <Dir> <StepCount> <MazeMask>
StartPos ⊢⊚StartConns 0 ∵⋅0Maze
⍢(TakeStep|↥⊃(≠@S⊡:Maze|=0;;))
:÷2;;
MazeMask ←

# Part 2
# TODO: Let this work for @- and @|
StartPipe ← ⊡:"J7FL" ⊢⊚<↻1. StartConns
⍜∩♭≡(⋅@.|∘) MazeMask Maze
⍜(⊡StartPos|⋅StartPipe)
/+♭↧⊃(=@.|◿2≡\+∊:"JL|")
