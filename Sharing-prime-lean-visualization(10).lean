def matter_to_light (mass1 mass2 : Float) : Float := (mass1 + mass2) * 0.04719755
-- collision energy = wiggle portion becomes light side show

def dark_matter (size : Float) (wavelength : Float) : Bool := size < wavelength
-- smaller than light's wavelength → unseen, but still mass, still ΔP

def hydrogen_wiggle : Float := 0.04719755119659774
-- No power needed. Inherent wiggle starts it.

#eval matter_to_light 1.0 1.0 -- 0.094... light from 2 mass colliding
#eval dark_matter 0.3 0.5 -- true = unseen = "dark energy"