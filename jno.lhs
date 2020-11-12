

1
sig Ne { 
2
  R  : set Ne,
3
  Si : set Sig,
4
  S  : set Sw
5
  }
6
​
7
sig Sig, Sw {} 
8
​
9
-- all joins have signals
10
​
11
fact{
Alloy4Fun


1
sig Ne { 
2
  R  : set Ne,
3
  Si : lone Sig,
4
  S  : lone Sw
5
  }
6
​
7
sig Sig, Sw {} 
8
​
9
-- all joins have signals
10
​
11
fact{
12
   R.~R - Si.(Sig->Sig).~Si in iden
13
}
14
​
15
-- all forks have switches
16
​
17
fact{
18
   ~R.(R - S.(Sw->Ne)) in iden
19
}
20
​
21
-- R is irreflexive
22
​
23
fact{
24
  R - iden = R
25
  R - ~R = R
26
  no (^R & iden)
27
 -- no (^R & R)
28
}
29
​
30
-- signals are not shared and switches are not shared
31
​
32
fact{
33
   S.~S in iden
34
   Si.~Si in iden
35
}
36
​
37
​
38
run { 
39
  some R
40
  some Si
41
  some S
42
  not (R.~R in iden) -- there are joins
43
  not (~R.R in iden) -- theres are forks
44
} for exactly 4 Ne, 4 Sig, 4 Sw


Start

Type-Safe Generic Differencing of Mutually Recursive Families
5 oktober 2020 des ochtends te 11:00 uur
Victor Cacciari Miraldo

----------------------

1. Best wishes and general appreciation

I would like to begin by thanking the invitation to be part of this doctoral defense committee,
to greet all its members and to convey to the academic authorities of the University of Utrecht
the institutional greetings of the Dean of my university.

I greet candidate Victor Miraldo, congratulating him on reaching this stage of his scientific career
and wishing him the greatest success in this defense.

I will start with a brief comment on the dissertation and then interact with the candidate
on one or two topics that interested me in particular and that I would like to discuss with him.

This dissertation presents original and comprehensive research carried out
by the candidate on a challenging topic. His research contributes not only
to a more ambitious approach to the so relevant problem of comparing source
code (the 'diff' problem) and reconciling different versions of it, but also to
the Haskell programming ecosystem for generic programming.
It also includes a comprehensive empirical study that is carried out on real data
extracted from github repositories.

The scientific quality of the dissertation is high, especially in the candidate's honest
self-assessment of the results obtained, thus showing a truly scientific mind at work.

----------------------
 
2. Technical questions

Regarding the results that the dissertation delivers, in the broad sense:
the overall aim of achieving structural diff'ing materialized in polytypic diff’ing,
as one would expect, but then called for improving the existing generic programming resources.

	- Which contribution do you regard as stronger? 

P81/90, minor detail: data TreeC 𝜑 = Hole 𝜑 ∣ LeafC Int ∣ BinC TreeC TreeC ∣ TriC TreeC TreeC TreeC ?

	- Isn’t 𝜑 missing from the BinC and TriC clauses?

P83/92: "The only condition we impose is (semi)injectivity of wcs". Then
on P86/95 there is a "functional specification" of wcs. But this relies on list
intersection which is, in general, not injective (even with no repeats)...

	- Have you ensured injectivity of the final implementation? Have you proved it?

For efficiency, tree equality is defined as the kernel of function merkleRoot,
whose outputs are paired with the trees themselves. Thus merkleRoot (P87/96)

merkleRoot ∶∶ Tree -> Digest
merkleRoot (LeafH n) = hash (concat ["1" , encode n])
merkleRoot (Bin x y) = hash (concat ["2" , merkleRoot x , merkleRoot y])
merkleRoot (Tri x y z) = hash (concat ["3" , merkleRoot x , merkleRoot y , merkleRoot z])

should be injective too.

Note: spurious H in LeafH, I think.

As catas preserve injectivity, an injective algebra will be enough.

          - Why 1,2,3 in merkleRoot’s algebra? As one of the "arms" of the initial algebra of lists,
	    cons is injective already.
          - Is this to "facilitate" the cross-injectivity to be ensured by hash?

P90/99, detail (typo?)

	-  Is it chgApply or applyChg? The latter is used twice only, I think this is a typo.

P91/100: "... the best change possible or not. We do not even have a notion of best at the moment".
And much later, P132/141: "... without a formal notion about when a patch is better than another,
it is impossible to make a decision about which context extraction should be used.” And finally,
P147/157: “canonical extension order (i.e., comparing domains of application functions) is not
a great option for defining the best patch.”

(Pre)Ordering patches thus sounds like a quite interesting topic, relevant because it will enable
to approach diffs as best patches,

     - possibly a right adjoint in a suitable Galois connection between patches and trees?
     (Need to preorder both), or adjunction? Have you/has anybody tried this?

Already on P4/13 - "enumerate all combinations of insertions, deletions and copies that transform
the source into the destination and choose the ‘best’ one."

P155/180: " Could we configure the merge algorithm to always chose higher version numbers,
for example, whenever it finds a conflict (...)"

	- Would vector clocks for implicit representation of the causal history help?

Time permitting: P82/91 partiality, a kind of |i . (conv d)| + 5.1.3 Meta Theory

----------------------

3. Written presentation

The writing quality is generally good, but still some typos that
still need to be corrected:

P5/P14 “published with with Pierre-ÉvaristeDagand.”
P84/93 "to only shares"
P147/156 - quite a few here: “indicies”,
“standard implementations *and* well-known data structures“,
“operaton”, “we *have* also seen”, “theory have” -> “theory has”,
“semigrougs” (6 in the same page!)

_____________________________________

P58/67 "Unfortunately, the generics-mrsop heavy usage of type families triggers a memory leak in the compiler.
This renders the library unusable for large families of mutually recursive datatypes at the time of writing this thesis.
Luckily, however, we were able to work around that by dropping the sums of products structure but maintaining a
combinator-based approach in generics-simplistic, which enabled us to run our experiments with real-world data,
as discussed in Chapter 6."

Jno notes (not for defense)

	P13/22 Definition2.1.1 (TreeMapping).
	P27/36 rose trees etc

End
