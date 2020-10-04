Start
Originality

This dissertation presents original and comprehensive research carried out by the candidate on a difficult topic. His research contributes not only to a more ambitious approach to the so relevant problem of comparing source code (the 'diff' problem), but also to the Haskell programming ecosystem for generic programming. It also includes a comprehensive empirical study.

Scientific quality

The scientific quality of this dissertation is high, particularly in the candidate's honest self-evaluation of the results obtained, thus showing a truly scientific mind at work.
 
Written presentation

The writing quality is generally good, although suffering from typos that will need to be corrected. But most of these are minor textual problems that do not compromise the overall result.
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

P86/95 wcs functional specification injective? list intersection not injective even  with no repeats.

P87/96, about the code below:
Spurious H in LeafH. Catas preserve injectivity, injective algebra enough. Why 1,2,3 in the algebra? As one of the “arms” of the initial algebra, cons is injective already. Is it to “facilitate” the cross-injectivity to be ensured by hash?

merkleRoot ∶∶ Tree → Digest
merkleRoot (LeafH n) = hash (concat [“1” , encode n])
merkleRoot (Bin x y) = hash (concat [“2” , merkleRoot x , merkleRoot y])
merkleRoot (Tri x y z) = hash (concat [“3” , merkleRoot x , merkleRoot y , merkleRoot z])

P90/99 is it chgApply or applyChg? Latter used twice only.
+ 5.1.3 Meta Theory
P91/100 the best change topic
P132/141 “Forgetting about sharing is just one example of a different context extraction mechanism and, without a formal notion about when a patch is better than another”...

P156/155 vector clocks for implicit representation of causal histories. ?

Jno notes
P13/22 Definition2.1.1(TreeMapping).
P27/36 rose trees etc

Typos: 

P5/P14 published with with Pierre-ÉvaristeDagand.
P84/93 “to only shares”

CSI teste: FT de |‪maybe :: b->(a->b) -> Maybe a -> b| ‬que aplica o segundo argumento ao terceiro quando este for |Just x|, retornando o primeiro argumento caso contrário.
|maybe b f = either (const b) f|

N. Wu - http://zenzike.com/posts/2011-04-07-injective-representables

End
