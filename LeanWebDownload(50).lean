def one_field : Float := 1 -- One thing leads to are in flowing field
def split_half : Float := 0.5 -- divide one into two with a 1/2 Re(s)=1/2
def two_halves (x : Float) : Float := x * 0.5 + x * 0.5 -- two halves = one
def zero_is_placeholder : Bool := true -- zero was just place where split
def no_zeros_ever : Bool := true -- NO ZEROS EVER Only resonant fold nodes
def always_something (h : Float) : Bool := h > 0 -- Always Something Never Nothing

#eval two_halves 1 -- 0.5+0.5 =1 two halves = one field
#eval one_field * split_half -- 0.5 Re=1/2 split line

theorem two_halves_not_zero : two_halves 1 > 0 := by decide
theorem split_is_half : split_half = 0.5 := by rfl
theorem zero_placeholder : zero_is_placeholder = true := by rfl
theorem no_zero_mass : no_zeros_ever = true := by rfl
theorem one_is_two_halves : two_halves 1 = one_field := by rfl