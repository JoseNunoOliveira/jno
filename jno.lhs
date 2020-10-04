Start

Type-Safe Generic Differencing of Mutually Recursive Families
5 oktober 2020 des ochtends te 11:00 uur
Victor Cacciari Miraldo

----------------------

1. Best wishes and general appreciation

Best wishes

Originality
This dissertation presents original and comprehensive research carried out
by the candidate on a difficult topic. His research contributes not only
to a more ambitious approach to the so relevant problem of comparing source
code (the 'diff' problem), but also to the Haskell programming ecosystem
for generic programming. It also includes a comprehensive empirical study.

Scientific quality
The scientific quality of this dissertation is high, particularly in the
candidate's honest self-evaluation of the results obtained, thus showing
a truly scientific mind at work.

----------------------
 
2. Technical questions

Overall outcome - overall aim at structural diff'ing materializes in polytypic
diff’ing, eventually calling from improving the existing generic programming
libraries.

	- Which contribution do you regard as stronger? 

P81/90, data TreeC 𝜑 = Hole 𝜑 ∣ LeafC Int ∣ BinC TreeC TreeC ∣ TriC TreeC TreeC TreeC ?

	- Isn’t 𝜑 missing from the BinC and TriC clauses?

P83/92: "The only condition we impose is (semi)injectivity of wcs". Then
on P86/95 there is a "functional specification" of wcs which relies on list
intersection which is, in general, not injective (even withno repeats)...

	- Have you ensured this on the final implementation?

Then, for efficiency, tree equality is defined as the kernel of merkleRoot, whose strings are paired with the trees themselves. Then merkleRoot (P87/96)

merkleRoot ∶∶ Tree -> Digest
merkleRoot (LeafH n) = hash (concat ["1" , encode n])
merkleRoot (Bin x y) = hash (concat ["2" , merkleRoot x , merkleRoot y])
merkleRoot (Tri x y z) = hash (concat ["3" , merkleRoot x , merkleRoot y , merkleRoot z])

should be injective too.

Note: spurious H in LeafH, I think.

Catas preserve injectivity, injective algebra enough. Why 1,2,3 in the algebra?
As one of the "arms" of the initial algebra of lists, cons is injective already. Is
this to "facilitate" the cross-injectivity to be ensured by hash?

P90/99
	-  Is it chgApply or applyChg? Latter used twice only, I think this is a typo.

P91/100: " xxx"  the best change topic

P82/91 partiality, a kind of |i . (conv d)|
+ 5.1.3 Meta Theory

P132/141: "Forgetting about sharing is just one example of a different context extraction mechanism and, without a formal notion about when a patch is better than another"...

Ordering patches is perhaps the most interesting topic, cf

page 4/13 - "enumerate all combinations of insertions, deletions and copies that transform the source into the destination and choose the ‘best’ one."

P81/90 jno, |diff x y| as a kind of residual, thus a GC between patches and trees? Need to preorder both.

P156/155: " xxxx "

	- Would vector clocks for implicit representation of the causal history help?

----------------------

3. Written presentation

The writing quality is generally good, although suffering from typos that
still need to be corrected. But most of these are minor textual problems that
do not compromise the overall result.

Typos, still: 

P5/P14 published with with Pierre-ÉvaristeDagand.
P84/93 "to only shares"
P147/156 - quite a few! xxxx


P58/67 "Unfortunately, the generics-mrsop heavy usage of type families triggers a memory leak in the compiler. This renders the library unusable for large families of mutu- ally recursive datatypes at the time of writing this thesis. Luckily, however, we were able to work around that by dropping the sums of products structure but maintaining a combinator-based approach in generics-simplistic, which enabled us to run our experiments with real-world data, as discussed in Chapter 6."

Jno notes (not for defense)

	P13/22 Definition2.1.1 (TreeMapping).
	P27/36 rose trees etc

End
