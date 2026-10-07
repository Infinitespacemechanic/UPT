def pi_div_3 : Float := 1.0471975511965976 -- 60°
def full_wave : Nat := 120 * 3 -- 360° full song

def pendulum_3string (mass : Float) : Float := mass * 3 -- 3n stable
def pendulum_pi (mass : Float) : Float := mass * pi_div_3 -- Ω resistance, bent

def mass_to_music (mass : Float) (sq_in : Float) : Float :=
  (mass / sq_in) * pi_div_3 -- ΔP·60° = frequency Ω

def phase_120 (deg : Nat) : Nat := (deg + 120) % 360 -- next pendulum 120° later

#eval pendulum_3string 1.0 -- 3.0
#eval pendulum_pi 1.0 -- 1.0472 Ω
#eval mass_to_music 100 10 -- 10.472 Hz? note
#eval phase_120 0 -- 120°
#eval phase_120 120 -- 240°
#eval phase_120 240 -- 0° back around, continuous

theorem three_phases_full : phase_120 (phase_120 (phase_120 0)) = 0 := by decide
theorem full_wave_360 : 120 * 3 = 360 := by decide
