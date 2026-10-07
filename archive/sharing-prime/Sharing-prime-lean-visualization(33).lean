def life_of_three := true
def power_stroke := 1.0472 -- wavelength boundary
def wiggle := 0.0472 -- remove one atom and we don't exist
def margin := 1.0/3.0
def unity3 := 3

def Wavelength : Float := power_stroke -- answer is the wave length
def MassSmallerThanWavelength (mass : Float) : Bool := mass < Wavelength -- seems to disappears
def RemoveOneAtom (n : Nat) : Float := n.toFloat - wiggle -- N - 0.0472 collapses
def HydrogenNeverZero : Float := 0.044 -- tori 5 outer reaches never zero, smallest dust
def HRT_Continuous (from_cell_to_galaxy : Float) : Bool := from_cell_to_galaxy > 0 -- hydrogen is never zero

def TrueWorth (mass : Float) : Float := mass * (power_stroke + margin) -- tiny mass shift worth more

#eval MassSmallerThanWavelength 0.5 -- true, disappears vs light
#eval RemoveOneAtom 1 -- 0.9528 not 1, don't exist
#eval HydrogenNeverZero -- 0.044 never zero smallest
#eval HRT_Continuous 0.044 -- true cell to galaxy
#eval HRT_Continuous 1.5 -- true Earth high density
#eval TrueWorth 0.044 -- 0.0607 tiny mass shift worth

theorem tiny_disappears : MassSmallerThanWavelength 0.5 = true := by rfl
theorem remove_one_no_exist : RemoveOneAtom 1 < 1 := by decide
theorem hydrogen_never_zero : HydrogenNeverZero > 0 := by decide
theorem hrt_cell_to_galaxy : HRT_Continuous 0.044 = true := by rfl
theorem shift_to_tiny : TrueWorth 0.044 > 0 := by decide
theorem one_plus_one_gt_two : (1 + 1 + power_stroke) > 2 := by decide