>|| Exercise 7.3
>|| Completes the implementation for the sequence abstract type.

> abstype sequence *
> with
>     seqNil :: sequence *
>     seqConsL :: * -> (sequence *) -> (sequence *)
>     seqConsR :: (sequence *) -> * -> (sequence *)
>     seqHdL :: (sequence *) -> *
>     seqHdR :: (sequence *) -> *
>     seqTlL :: (sequence *) -> (sequence *)
>     seqTlR :: (sequence *) -> sequence *
>     seqAppend :: (sequence *) -> (sequence *) -> (sequence *)
>     seqDisplay :: (sequence *) -> [*]

> sequence * == [*]

> seqNil = []
> seqConsL = (:)
> seqConsR anyseq item = anyseq ++ [item]

> seqHdL = hd
> seqHdR = hd. reverse

> seqTlL = tl
> seqTlR = reverse . tl . reverse

> seqAppend = (++)

> seqDisplay s = s
