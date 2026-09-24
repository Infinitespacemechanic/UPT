def never_same_place_twice (N : Float) : Float := N + 0.04719755119659774
-- N+0.0472 — inherent asymmetry, no two things same place/time

#eval never_same_place_twice 0 -- 0.0472 — first twin
#eval never_same_place_twice 1 -- 1.0472 — second twin, 0.0472 later
-- Twins not born at same time