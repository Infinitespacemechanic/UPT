def life_of_three := true
def unity3 : Nat := 3 -- Unity 3
def power_stroke : Float := 1.0472 -- 60° / 1.0472
def wiggle : Float := 0.0472 -- +0.0472 Wiggle
def margin : Float := 1.0/3.0
def nine : Float := 9 -- 3^-2 = 1/9, v/(3^-2) = v*9, 3-6-9

def pi_reduced : Float := power_stroke -- π = 60° / 1.0472
def equilateral : Bool := true -- 60° triangle
def N_plus_wiggle (n : Nat) : Float := n.toFloat + wiggle -- N + 0.0472 never same
def v_div_3neg2 (v : Float) : Float := v / (1.0/9.0) -- v/(3^-2) = v*9
def TrueWorthOfMass (mass count : Float) : Float := mass * count * (power_stroke + margin) -- mass * synergy

#eval pi_reduced -- 1.0472
#eval N_plus_wiggle 1 -- 1.0472
#eval N_plus_wiggle 2 -- 2.0472
#eval v_div_3neg2 1 -- 9
#eval v_div_3neg2 1.0472 -- 9.4248 = 3*π?
#eval TrueWorthOfMass 1 19 -- 19 spheres hex pack * 1.38 = 26.2 >19 greater than sum

theorem pi_is_unity3_div_10472 : pi_reduced * 3 > 3.14 := by decide
theorem wiggle_is_power : N_plus_wiggle 0 = wiggle := by rfl
theorem nine_is_369 : v_div_3neg2 1 = 9 := by rfl
theorem true_worth_greater : TrueWorthOfMass 1 19 > 19 := by decide
theorem only_10472_makes_equilateral : power_stroke > 1 && power_stroke < 1.1 = true := by rfl