plus' : Nat -> Nat -> Nat
plus' Z     y = y
plus' (S k) y = S (plus' k y)

mult' : Nat -> Nat -> Nat
mult' Z     y = Z
mult' (S k) y = plus' y (mult' k y)
