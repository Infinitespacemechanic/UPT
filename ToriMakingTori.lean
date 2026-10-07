def whole_unit : Nat := 3 -- 3 = whole unit
def pi_div_3 : Float := 1.0472 -- π/3 ≈1.0472 parts
def margin : Float := 1.0/3.0 -- 1/3 margin

def tori (level : Nat) : Float := whole_unit.toFloat * (pi_div_3 * margin) ^ level.toFloat
-- tori at level 0 = 3, level 1 = 3·1.0472·1/3, level 2 = smaller...

def mass_drives_in_margin (mass : Float) : Float := mass * margin -- mass drives reactions in 1/3 margin
def margity_s_per_3 (s : Float) : Float := s * margin / 3 -- 1/3 margity s/3

#eval tori 0 -- 3.0 whole unit
#eval tori 1 -- 1.0472 parts
#eval tori 2 -- 0.365... tori making tori
#eval tori 5 -- 0.044... outer reaches free mass dust
#eval mass_drives_in_margin 100 -- 33.33 reaction in margin
#eval margity_s_per_3 1.0 -- 0.111... s/3

theorem margin_keeps_from_locking : margin < 1 := by decide
theorem tori_shrink_outer : tori 5 < tori 0 := by decide
theorem three_margins_make_whole : margin * 3 = 1 := by rfl
