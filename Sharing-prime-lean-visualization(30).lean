def life_of_three := true
def power_stroke := 1.0472 -- only this makes this duplication
def margin := 1.0/3.0 -- keeps personal space between copies

def Copies (density : Float) : Nat :=
  if density > 1.0 then 5 else 1 -- high density Earth = 5 copies, low density deep space = 1

def Duplication_Synergy (copies : Nat) : Float :=
  copies.toFloat * (power_stroke + margin) -- 5 * 1.3805 = 6.9 >1

#eval Copies 1.5 -- 5 copies Earth diffused H
#eval Copies 0.044 -- 1 copy deep space
#eval Duplication_Synergy 5 -- 6.9 lift / synergy >1

theorem earth_duplicates : Copies 1.5 = 5 := by rfl
theorem deep_space_single : Copies 0.044 = 1 := by rfl
theorem greater_than_sum_duplication : Duplication_Synergy 5 > 1 := by decide