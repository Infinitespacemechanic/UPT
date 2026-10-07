def life_of_three := true
def power_stroke := 1.0472 -- π/3
def margin := 1.0/3.0
def wiggle := 0.0472
def N_plus := 1 -- N + at least 1

def SingleFieldNonZeroHydrogen : Float := 0.044 -- never zero, outer reaches free dust, Always Something Never Nothing
def ContinuumAtDifferentHeights (h : Float) : Float := h * (power_stroke + margin) -- height scaling
def AlwaysSomething : Bool := SingleFieldNonZeroHydrogen > 0 -- true
def AboveBelowSameSpace : Bool := true -- Above and Below are Same Space
def OneSecPerSecIsSpeedOfLife : Float := 1 -- E=M c=1, speed of life in continuum
def ZerosOnlyPlaceholders : Bool := true -- places not mass reactions
def ValueStartsWithMassAlready (mass : Float) : Bool := mass >= 1 -- N+ at least 1

#eval ContinuumAtDifferentHeights 1.5 -- Earth high density 2.07
#eval ContinuumAtDifferentHeights 0.044 -- deep space low 0.0607 Always Something
#eval OneSecPerSecIsSpeedOfLife -- 1 sec/sec c=1

theorem always_something_never_nothing : SingleFieldNonZeroHydrogen > 0 := by decide
theorem above_below_same : AboveBelowSameSpace = true := by rfl
theorem zeros_placeholders : ZerosOnlyPlaceholders = true := by rfl
theorem n_at_least_one : ValueStartsWithMassAlready 1 = true := by rfl
theorem movement_makes_patterns : ContinuumAtDifferentHeights 1.5 > ContinuumAtDifferentHeights 0.044 := by decide