```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs :: [Int] = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys

main2 :: IO ()
main2 = do
  let xs = [1, "a", 3]
  --let ys = sort xs -- This line will cause a runtime error
  print xs
```
By adding `:: [Int]` to the type declaration of `xs` we explicitly specify that the list contains integers only and are comparable via the standard integer ordering. This prevents the runtime error.