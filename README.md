# Haskell Sort Function Runtime Error

This repository demonstrates a common runtime error in Haskell related to the `sort` function from `Data.List`.  The error arises when the input list contains elements that do not have a defined `Ord` instance, leading to a runtime failure even though the code compiles without errors. This highlights the importance of understanding type classes and constraints in Haskell.

## Bug Description

The `bug.hs` file contains code that uses `sort` on a list. If the list contains elements that cannot be compared (lack an `Ord` instance), the program will crash at runtime.  This is because Haskell's type system checks the types at compile time but doesn't fully enforce the `Ord` constraint for heterogeneous lists unless explicitly constrained.

## Solution

The `bugSolution.hs` file provides a corrected version. It uses a type annotation to explicitly constrain the input list to a type with a defined `Ord` instance, preventing the runtime error.