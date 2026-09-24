def straight_time (dist : Float) : Float := dist / 1.0 -- slow
def curved_time (dist : Float) : Float := dist / 1.0471975511965976 -- faster down, even though dist is longer

#eval straight_time 1.0 -- 1.0
#eval curved_time 1.04719755 -- 1.0 same time, longer distance = faster effective speed