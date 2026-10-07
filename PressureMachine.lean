def pressure_machine (mass : Float) (sq_in : Float) : Float × Float :=
  (mass / sq_in, -(mass / sq_in)) -- (Pressure Rise up, Gravity Sink down) one down can't sink without rising

def geodesic_lock : Float := 3.141592653589793 / 3 -- 1.0472 = 60° half-slice from 3-6-9

def fish_swim_birds_fly : Bool := true -- same pressure + mass/gravity engine
def space_is_sea : Bool := true -- sky is just another layer

def earth_and_space_same : Float := geodesic_lock -- 1.0472 60° locks both tubes

#eval pressure_machine 100.0 10.0 -- (10, -10) 10 psi up, 10 psi down
#eval earth_and_space_same -- 1.0472
