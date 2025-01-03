# Elixir List Modification Bug

This repository demonstrates an issue related to list immutability in Elixir when using `Enum.each`.  The provided code attempts to modify a list within the `Enum.each` loop, but fails to alter the original list due to Elixir's immutable data structures. The solution showcases how to correctly modify the list using other approaches, such as recursion or list comprehensions.

## Bug Description

The core problem lies in the misunderstanding of how Elixir handles list manipulations.  Functions like `List.delete` do not modify the original list; instead, they return a *new* list. Therefore, the `list` variable inside the `Enum.each` block refers to a different list than the one outside.

## How to Reproduce

Clone this repository, and run `bug.exs`.  The output shows that the list remains unmodified even after calling `List.delete`. 

## Solution

The `bugSolution.exs` file offers correct ways to achieve the desired list modification.