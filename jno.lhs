Initial

Type-Safe Generic Differencing of Mutually Recursive Families
5 oktober 2020 des ochtends te 11:00 uur

Victor Cacciari Miraldo

1. Best wishes and general appreciation - Generic, aim at polytypic diff’ing lead to improving generic programming libraries: which contribution stronger?
2. Technical questions
3. Typos

page 4/13 - “enumerate all combinations of insertions, deletions and copies that transform the source into the destination and choose the ‘best’ one.”

page 74/83 - “The only condition we impose is (semi)injectivity of wcs”. Then on page 77/86 there is a “functional specification” which is not proved injective. Have you ensured this on the final implementation?

P58/67 “Unfortunately, the generics-mrsop heavy usage of type families triggers a memory leak in the compiler. This renders the library unusable for large families of mutu- ally recursive datatypes at the time of writing this thesis. Luckily, however, we were able to work around that by dropping the sums of products structure but maintaining a combinator-based approach in generics-simplistic, which enabled us to run our experiments with real-world data, as discussed in Chapter 6.”

P81/90 isn’t 𝜑 missing from the BinC and TriC clauses?
data TreeC 𝜑 = Hole 𝜑
∣ LeafC Int
∣ BinC TreeC TreeC
∣ TriC TreeC TreeC TreeC

P81/90 jno, |diff x y| as a kind of residual, thus a GC between patches and trees? Need to preorder both.

P82/91 partiality, a kind of |i . (conv d)|

Jno notes
P13/22 Definition2.1.1(TreeMapping).
P27/36 rose trees etc

Typos: 

P5/P14 published with with Pierre-ÉvaristeDagand.

CSI teste: FT de |‪maybe :: b->(a->b) -> Maybe a -> b| ‬que aplica o segundo argumento ao terceiro quando este for |Just x|, retornando o primeiro argumento caso contrário.
|maybe b f = either (const b) f|

N. Wu - http://zenzike.com/posts/2011-04-07-injective-representables

End
