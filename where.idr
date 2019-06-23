reverse : List a -> List a
reverse xs = revAcc [] xs where
  revAcc : List a -> List a -> List a
  revAcc acc []        = acc
  revAcc acc (x :: xs) = revAcc (x :: acc) xs
