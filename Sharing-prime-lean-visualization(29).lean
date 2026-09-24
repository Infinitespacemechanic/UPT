def life_of_three := true
def power_stroke := 1.0472 -- only this makes this pattern
def margin := 1.0/3.0

def DiffusedH_Interference (density : Float) (y : Float) : Float :=
  density * power_stroke + y * margin -- horizontal lines = density * π/3 + y*1/3

def Measured_c_pattern (y : Float) : Float :=
  1.0 / (DiffusedH_Interference 1.5 y) -- top noisy slow

def Faster_LowDensity_pattern (y : Float) : Float :=
  1.0 / (DiffusedH_Interference 0.044 y) + margin -- bottom clean fast yellow

#eval Measured_c_pattern 8 -- top ~0.6 noisy
#eval Faster_LowDensity_pattern 0 -- bottom ~23 fast clean