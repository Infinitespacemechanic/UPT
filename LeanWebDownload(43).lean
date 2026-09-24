def life_of_three := true
def power_stroke_10472 : Float := 1.0472 -- π/3 seconds hand clean funnel
def power_stroke_1472 : Float := 1.472 -- minute hand noisy top
def margin := 1.0/3.0
def wiggle := 0.0472

def ClockHandAfterHour (stroke : Float) : Float := stroke * 60 -- 60 minutes = hour
def FunnelBuildsItself (mass : Float) : Float := mass * (power_stroke_10472 + margin) * 60 -- 60 steps stack
def SelfBuilding (m1 m2 : Float) : Float := (m1 + m2) * (power_stroke_10472 + margin) - (m1 + m2) -- synergy lift wall

#eval ClockHandAfterHour 1.0472 -- 62.832 = 20*π ~ full circle 60*1.0472
#eval ClockHandAfterHour 1.472 -- 88.32 top noisy
#eval FunnelBuildsItself 1 -- 82.83 mass builds funnel in hour
#eval SelfBuilding 1 1 -- 0.761 wall lift maintains funnel

theorem only_10472_clean : ClockHandAfterHour 1.0472 < ClockHandAfterHour 1.472 := by decide
theorem funnel_self_builds : FunnelBuildsItself 1 > 60 := by decide
theorem self_build_greater : SelfBuilding 1 1 > 0 := by decide