-- MillenniumClock Lean: Pi Divided by the 3's
-- Laakkonen Constant = Pi/3 - 1 = 0.0472

def laakkonen_constant : Float := 3.141592653589793 / 3 - 1
-- 0.04719755119659774

def pi_div_3 : Float := 3.141592653589793 / 3
-- 1.0471975511965976 = 60° Geodesic Fall

def pi_div_6 : Float := 3.141592653589793 / 6
def pi_div_12 : Float := 3.141592653589793 / 12
def pi_div_24 : Float := 3.141592653589793 / 24
def pi_div_48 : Float := 3.141592653589793 / 48

def geodesic_drift_percent : Float := (3.141592653589793 / 3 - 1) * 100
-- 4.719755119659774% drift

-- Clock := Fin 720, every tick divisible by 3
def Clock : Nat := 720

theorem fin_720_divisible : Clock % 3 = 0 ∧ 360 % 3 = 0 ∧ 60 % 3 = 0 := by
  decide

theorem clock_divisible_12 : Clock % 12 = 0 := by
  decide

theorem sixty_divisible : 60 % 3 = 0 := by
  decide

-- First radian in 3's undercuts everything
theorem three_undercuts : 3 % 3 = 0 := by
  decide

-- Evals for web
#eval laakkonen_constant -- 0.04719755119659774
#eval pi_div_3 -- 1.0471975511965976
#eval pi_div_6 -- 0.5235987755982988
#eval pi_div_12 -- 0.2617993877991494
#eval geodesic_drift_percent -- 4.719755119659774
#eval Clock % 3 -- 0