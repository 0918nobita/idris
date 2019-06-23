isSingleton : Bool -> Type
isSingleton True  = Nat
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []
