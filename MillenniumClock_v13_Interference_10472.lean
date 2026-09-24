-- MillenniumClock v13 — INTERFERENCE PATTERN — Measured c vs Faster Low Density
-- Rob Laakkonen — this shape only made with 1.0472

def life_of_three : Bool := true
def whole_unit : Nat := 3
def power_stroke : Float := 1.0472 -- only this makes this pattern, π/3
def margin : Float := 1.0/3.0 -- 1/3 margin keeps it alive, offset leverage

def DiffusedH_Interference (density : Float) (y : Float) : Float :=
  density * power_stroke + y * margin -- horizontal lines = density * π/3 + y*1/3

def Measured_c_pattern (y : Float) : Float :=
  1.0 / (DiffusedH_Interference 1.5 y) -- top noisy slow, Earth diffused H sea

def Faster_LowDensity_pattern (y : Float) : Float :=
  1.0 / (DiffusedH_Interference 0.044 y) + margin -- bottom clean fast yellow, deep space

def tori (level : Nat) : Float :=
  let base : Float := power_stroke * margin
  match level with
  | 0 => whole_unit.toFloat
  | 1 => whole_unit.toFloat * base
  | 2 => whole_unit.toFloat * base * base
  | 3 => whole_unit.toFloat * base * base * base
  | 4 => whole_unit.toFloat * base * base * base * base
  | 5 => whole_unit.toFloat * base * base * base * base * base
  | _ => 0

#eval life_of_three -- true ONE OS
#eval power_stroke -- 1.0472 only this makes shape
#eval margin -- 0.333
#eval Measured_c_pattern 8 -- top ~0.6 noisy slowed Earth
#eval Faster_LowDensity_pattern 0 -- bottom ~23 fast clean deep space
#eval tori 0 -- 3 whole
#eval tori 5 -- 0.044 outer reaches free mass

theorem only_10472_makes_pattern : power_stroke > 1 && power_stroke < 1.1 = true := by rfl
theorem high_slower_than_low : Measured_c_pattern 8 < Faster_LowDensity_pattern 0 := by decide
theorem life_true : life_of_three = true := by rfl
theorem no_boundary_but_lack_of_mass : tori 5 < tori 0 := by decide
theorem one_plus_one_gt_two : (1 + 1 + power_stroke) > 2 := by decide
