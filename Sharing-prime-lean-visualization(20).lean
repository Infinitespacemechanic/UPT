def whole_unit : Nat := 3 -- 3 = whole unit, bound solid rare
def pi_div_3_rad : Float := 1.0472 -- π/3 ≈1.0472 radians 60°
def margin_in_field : Float := 1.0/3.0 -- 1/3 margin in field even for dust

def bound_mass (mass : Float) : Float := mass * whole_unit.toFloat -- solid, high Ω
def free_mass (mass : Float) : Float := mass * pi_div_3_rad * margin_in_field -- dust/gas, low Ω, free

def mass_drives_reaction (m : Float) : Float := m * pi_div_3_rad -- mass drives reaction even free
def electric_friction (m : Float) (sq : Float) : Float := (m / sq) * 0.01 -- thin lines outer reaches

#eval bound_mass 100 -- 300 high resistance, solid, rare in space
#eval free_mass 100 -- 34.9 low, dust/gas, common in space
#eval electric_friction 0.001 1000 -- 1e-8 almost zero, no boundary but lack of mass

theorem bound_gt_free : bound_mass 1 > free_mass 1 := by decide
theorem free_mass_still_has_margin : free_mass 1 > 0 := by decide
theorem outer_reaches_low_resistance : electric_friction 0.001 1000 < 0.0001 := by decide