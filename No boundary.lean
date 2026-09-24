theorem no_boundary_only_lack_of_mass : 
  let mass := 0.001 -- space, thin
  let resistance := mass / 1.0 -- ΔP small
  resistance < 0.01 := by decide -- almost zero, goes through
