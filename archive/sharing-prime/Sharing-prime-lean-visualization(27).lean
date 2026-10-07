def life_of_three := true
def whole_unit := 3
def parts := 1.0471
def margin := 1.0/3.0 -- 1/3 Offset Leverage

def DensityLimitWall : Float := 1.0 -- wall at 1, normalized
def HighDensity_Earth : Float := 1.5 -- diffused H sea
def LowDensity_Space : Float := 0.044 -- tori 5 outer reaches

def Pressure (mass sq : Float) : Float := (mass / sq) * parts
def Measured_c (density : Float) : Float := 1.0 / density -- slower in high density
def Faster_LowDensity (density : Float) : Float := 1.0 / density + margin -- faster where less interference

#eval Pressure 100 10 -- 10.471 pressure container
#eval Measured_c HighDensity_Earth -- 0.666 slowed c Earth diffused H
#eval Faster_LowDensity LowDensity_Space -- 23.06 fast deep space
#eval DensityLimitWall -- 1 wall

theorem high_density_slower : Measured_c 1.5 < Faster_LowDensity 0.044 := by decide
theorem irreversible : DensityLimitWall > 0 := by decide
theorem heron_no_power : Pressure 100 10 > 0 := by decide