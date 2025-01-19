The solution avoids the infinite loop by creating the list with necessary strictness:

```haskell
import Data.Char

main :: IO ()
main = do
  let xs = map toUpper ['a'..'z']
  let ys = map toLower xs
  print (length ys)
  print (head ys)

```

No `seq` is necessary because the `length` operation already forces evaluation, the problem was the circular dependancy.  The issue isn't fixed by the addition of `seq` as a lazy map has already been applied.  The `length` function forces evaluation of the entire list and as this list is based on a list it forces the previous list to fully evaluate before it continues.  This is the nature of lazy evaluation, you must take care when the evaluation is forced on a list that is based on the creation of the next list.