def natural_time : Float := 1.0 -- Δt/Δt = 1 s/s in our frame, always

def proper_time (coordinate_time : Float) (wiggle : Float) : Float :=
  coordinate_time + wiggle -- your time = my time + 0.0472 offset
  -- No two things same place twice

#eval natural_time -- 1.0
#eval proper_time 1.0 0.04719755119659774 -- 1.0472 = geodesic second
