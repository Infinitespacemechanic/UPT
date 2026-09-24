def matter_to_mass (matter : Nat) : Nat := 3 * matter -- stack at 3n

def deltaP (mass : Float) (sq_in : Float) : Float := mass / sq_in
-- ΔP = mass / sq in = local pressure gradient = gravity

def gravity_from_stack (mass : Float) : Float := mass * 0.04719755119659774
-- inherent wiggle starts it, +0.0472 asymmetry compounds

#eval deltaP 100.0 10.0 -- 10 psi local gravity
#eval gravity_from_stack 100.0 -- 4.71... wiggle gravity from 100 mass