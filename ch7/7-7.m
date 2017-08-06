>|| Exercise 7.7
>|| Provides an implementation of the abstract queue type

> abstype queue *
> with
>     qisempty :: queue * -> bool
>     qtop :: queue * -> *
>     qinsert :: queue * -> * -> queue *
>     qcreate :: queue *

> queue * == [*]

> qisempty [] = True
> qisempty xs = False

> qtop = hd

Note that the definition does not return the new queue so it is actually impossible to remove an item from the queue only to observe the first item

> qinsert xs x = xs ++ [x]

Depending on whether qinserts or qtops are more common which side of the list is the end of the queue could be changed to improve performance

> qcreate = []
