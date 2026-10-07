def additive (n : Nat) : Nat := n + 1
def multiplicative_stable (n : Nat) : Nat := 3 * n -- 3,6,9,12...
def wiggle : Float := 0.04719755119659774 -- Pi/3 - 1

def effective (n : Nat) : Float := (3 * n).toFloat + n.toFloat * wiggle
-- synergy + wiggle = real-world momentum