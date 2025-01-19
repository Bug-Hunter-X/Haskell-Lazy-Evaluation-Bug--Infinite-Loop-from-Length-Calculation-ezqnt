# Haskell Lazy Evaluation Bug: Infinite Loop

This repository demonstrates a subtle bug related to lazy evaluation in Haskell. The code attempts to calculate the length of a list created through lazy mapping, but due to improper use of `seq`, it falls into an infinite loop.  The solution shows how to correctly apply lazy evaluation principles to avoid this.

## Bug Description
The primary issue stems from the interaction of lazy evaluation with the `length` function.  The naive approach forces the complete evaluation of a lazily generated list to compute its length, leading to unexpected recursion and infinite loops if the list's creation process depends on its own already generated elements.

## Solution
The corrected code demonstrates an efficient and proper way to handle lazy evaluation in similar scenarios, preventing the infinite loop and ensuring correct program termination.