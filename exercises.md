lists and functions
-------------------

write a function `reverse` that takes a list and returns the list of
all elements in reverse order.  (start with the type signature.)

write a function `filterSingleDigit` that takes a list of integers and
returns a list with all integers not >= 0 and <= 10 removed.

write a more general function `filter` that takes a function from `Int`
to `Bool` as an argument, and uses that to decide which elements to keep
and which to drop.

can you generalize the type further?


pairs
-----

write the type of a function `pair` that turns an even-length list of
anything into a list of pairs.

implement the function.

change the function so that if the list is of odd length, `Nothing ::
Maybe a` is returned.


trees
-----

write the type of a function `isConsistent` that checks binary search
tree for consistency (a tree is consistent if the lookup function
works, i.e. if all left nodes are smaller than all right nodes).

implement the function.

write the type of a function `insert` that adds an element into the
tree.
