
> Changing subject: what is the formal definition of a “quadratic activation” in neural networks?

A **quadratic activation function** is an activation function of the form:

$$f(x) = x^2$$

or more generally, a second-degree polynomial:

$$f(x) = ax^2 + bx + c$$

where $a$, $b$, $c$ are constants (often just $a=1, b=0, c=0$ for the pure squaring case).

**Key formal properties**

- **Non-linearity**: Unlike identity/linear activations, $f(x)=x^2$ is non-linear, so networks using it can still, in principle, approximate non-linear functions — this is the basic requirement for an activation function to be useful in a multi-layer network at all.
- **Non-monotonic**: It decreases for $x<0$ and increases for $x>0$, with a minimum at $x=0$. This is unlike ReLU, sigmoid, or tanh, which are monotonic.
- **Even function**: $f(-x) = f(x)$, meaning it treats positive and negative inputs symmetrically (loses sign information).
- **Unbounded above, bounded below**: $f(x) \in [0, \infty)$ for the pure case $x^2$, so it never outputs negative values.
- **Derivative**: $f'(x) = 2x$ (or $f'(x) = 2ax + b$ in the general form), which is linear — this contrasts with the derivatives of sigmoid/tanh, which saturate (flatten) for large $|x|$.

**Where it's used**

- In some **polynomial neural networks** or **quadratic neurons**, where the neuron itself computes a quadratic form of its inputs (not just squaring a linear combination), e.g. $y = \mathbf{x}^T A \mathbf{x} + \mathbf{b}^T \mathbf{x} + c$.
- Sometimes used in **radial basis function (RBF) networks** or in specific architectures designed to approximate quadratic/polynomial relationships more efficiently than piecewise-linear activations like ReLU.
- Occasionally appears in physics-informed neural networks or scientific ML contexts, where the underlying phenomena are known to have quadratic relationships.

**Practical caveat**: Pure quadratic activations are rarely used in standard deep learning because they tend to cause exploding gradients/activations in deep networks (since values compound multiplicatively through layers) and because the loss of sign information can discard useful input structure. They're more of a specialized or research tool than a mainstream choice like ReLU or GELU.

Want me to go into how quadratic neurons compare mathematically to standard neurons (i.e., the second-order polynomial neuron formulation), or is this more about activation functions specifically?

> I would like to relate this kind of activation with that proposed in this talk, https://www.di.uminho.pt/~jno/ps/wg21-83-sl.pdf, in the proposed activation calculated to implement XOR with a single neuron.

I found the talk (Oliveira, "Reducing Logic to Arithmetics — Why not?", IFIP WG2.1 #83). Here's the relevant part and how it connects to quadratic activations.

**The setup in the talk**

The standard neuron computes $\alpha(w_1x_1 + w_2x_2 + b)$ with a *linear* pre-activation. Oliveira shows this works fine for OR, AND, NAND, NOT (you just pick the right bias $b$ and use a steep sigmoid $\alpha = \sigma(k\cdot x)$ pushed toward a Heaviside step). But when he tries the same recipe for XOR, the truth table gives contradictory constraints on $b$ (he needs $b<0$, $b>-1$, and $b<-2$ simultaneously) — so XOR is not primitive linear and needs to be decomposed, unlike OR, AND, NAND, and NOT.

**His proposed fix: a quadratic activation**

Instead of decomposing XOR into multiple linear neurons (the usual textbook answer — you need a hidden layer), he proposes trying a different "activation function," defined as x ⊕ y = β(x + y), where β(x) = 1 − (x − 1)².

He then verifies algebraically that this collapses to the arithmetic XOR formula: expanding 1 − (x + y − 1)² gives 2x + 2y − x² − y² − 2xy, which equals x + y − 2xy — the same expression he derived earlier from the Boolean-to-arithmetic translation a ⊕ b = a + b − 2ab.

**How this relates to your earlier "quadratic activation" question**

1. **It's the same idea, applied to a sum-of-inputs pre-activation.** Where a generic quadratic activation is $f(z) = az^2+bz+c$ applied to a linear combination $z = w_1x_1+w_2x_2+b$, Oliveira's $\beta(z) = 1-(z-1)^2$ is exactly that form with $a=-1, b=2, c=0$ (after expanding), applied to $z = x+y$ (weights fixed at 1, no separate bias term folded in yet — the "$-1$" is baked into the squared term itself).

2. **The non-linearity is doing exactly the job standard linear-activation neurons can't do.** This is the crux: a single neuron with a *linear* pre-activation and monotonic squashing function (sigmoid/step) can only realize linearly separable Boolean functions — OR, AND, NAND, NOT are linearly separable, XOR is not (the classic Minsky–Papert observation). By switching the activation itself to a genuinely non-monotonic quadratic function, Oliveira makes a *single* neuron capable of representing XOR — something that ordinarily requires at least two layers (e.g., XOR = OR AND NAND, as in his other constructions using NAND gates). This is a nice concrete illustration of why non-linear, non-monotonic activations (like $x^2$) are strictly more expressive per-neuron than monotonic ones like sigmoid/ReLU for this class of problem.

3. **Vertex/symmetry structure matches XOR's truth table.** $\beta(z) = 1-(z-1)^2$ is an inverted parabola with vertex at $z=1$, where $\beta(1)=1$ (max), and it decreases symmetrically as $z$ moves away from 1 in either direction, hitting $\beta(0)=0$ and $\beta(2)=0$. For binary inputs, $z=x+y \in \{0,1,2\}$: $z=0\to 0$, $z=1\to 1$, $z=2\to 0$ — exactly the XOR truth table (0,1,1,0 in the four (x,y) cases, since both $z=1$ cases (0,1) and (1,0) map to output 1). This is precisely why a quadratic (non-monotonic) shape is *necessary* here: XOR is "high in the middle, low at the ends" of the sum $x+y$, which no monotonic function of $z$ can reproduce, but a parabola can.

So Oliveira's $\beta$ is best understood as a special case of the quadratic-activation family, chosen specifically because its parabolic (non-monotonic) shape lets a single neuron directly encode the non-linearly-separable XOR function — a task that would otherwise force you into a NAND/AND/OR decomposition (his "XOR = 4 NANDs" circuit) or a multi-neuron network.

Would you like me to work out the general condition on $(a,b,c)$ in $f(z)=az^2+bz+c$ for which a single quadratic neuron can realize *any* given 2-input Boolean function (i.e., generalize his trick beyond XOR)?
Great — this generalizes nicely, and Oliveira's XOR trick turns out to be one instance of a broader pattern. Let me lay out the general theory.

## Setup

A "quadratic neuron" here means: take a linear pre-activation $z = w_1x_1 + w_2x_2 + b$, then apply a quadratic activation $f(z) = \alpha z^2 + \beta z + \gamma$ (3 free parameters). We want to know: for which 2-input Boolean functions $h(x_1,x_2)$ can we choose $(w_1,w_2,b,\alpha,\beta,\gamma)$ so that $f(z) = h(x_1,x_2)$ exactly on all four input rows?

## The key constraint: 3 degrees of freedom, 4 rows

A quadratic is fully determined by its values at **3 points** (Lagrange interpolation). But a 2-input Boolean function has **4 rows**. So generically a quadratic can't hit 4 independent targets — *unless two of the rows are forced to share the same $z$-value*, collapsing 4 constraints down to 3.

This is exactly what happens in Oliveira's XOR case: choosing $w_1=w_2=1$ makes $(0,1)$ and $(1,0)$ both map to $z=1$. That's only legal because $h(0,1)=h(1,0)=1$ for XOR — the merged rows already agree on the output.

**General rule:** pick two rows of the truth table that have equal output value, and choose weights $(w_1,w_2,b)$ so that those two rows map to the same $z$. This is always possible — with 4 rows and only 2 possible output values, by pigeonhole at least two rows share an output, so a valid merge always exists. The remaining 3 distinct $z$-values are then fit *exactly* by the quadratic's 3 free coefficients via Lagrange interpolation.

**Conclusion: every 2-input Boolean function can be realized by a single neuron with a quadratic activation** — you just need to choose the right linear pre-activation (not always $x+y$) to force the appropriate merge.

## The symmetric case (Oliveira's family): $z = x+y+b$

This only works directly when $h(0,1) = h(1,0)$ — i.e., $h$ is a *symmetric* Boolean function (AND, OR, XOR, NAND, NOR, XNOR, and the two constants). With $z=x+y$, the three distinct values are $z\in\{0,1,2\}$, and Lagrange interpolation through $(0,h_{00}), (1,h_{01}), (2,h_{11})$ gives:

$$f(z) = h_{00}\cdot\frac{(z-1)(z-2)}{2} \;+\; h_{01}\cdot z(2-z) \;+\; h_{11}\cdot\frac{z(z-1)}{2}$$

Plugging in truth tables:

| Function | $(h_{00},h_{01},h_{11})$ | $f(z)$ |
|---|---|---|
| XOR | $(0,1,0)$ | $z(2-z) = 1-(z-1)^2$ ← Oliveira's $\beta$ |
| AND | $(0,0,1)$ | $\frac{z(z-1)}{2}$ |
| OR | $(0,1,1)$ | $\frac{z(3-z)}{2}$ |
| NAND | $(1,1,0)$ | $1-\frac{z(z-1)}{2}$ |
| NOR | $(1,0,0)$ | $1-\frac{z(3-z)}{2}$ |
| XNOR | $(1,0,1)$ | $1-z(2-z) = (z-1)^2$ |

You can verify the AND formula: $z=0\to0$, $z=1\to0$, $z=2\to1$ ✓ — a genuinely different single-neuron realization of AND than the linear-sigmoid one from the talk, obtained "for free" from the same quadratic family.

## The non-symmetric case: need a different merge

For a function where $h(0,1)\ne h(1,0)$ (e.g. $x \wedge \neg y$: rows $00\to0,\ 01\to0,\ 10\to1,\ 11\to0$), the sum $z=x+y$ won't work, since it forces the wrong merge. Instead pick a pair that *does* agree — here $h_{00}=h_{11}=0$ — and choose weights so those rows coincide: $w_1+w_2=0$, e.g. $w_1=1, w_2=-1, b=0$, giving $z=x-y$.

This yields $z_{00}=0,\ z_{11}=0$ (merged, both output 0), $z_{01}=-1$ (output 0), $z_{10}=1$ (output 1). Lagrange interpolation through $(-1,0),(0,0),(1,1)$ gives:

$$f(z) = \frac{z(z+1)}{2}, \qquad z = x-y$$

Check: $z=-1\to0$, $z=0\to0$, $z=1\to1$ ✓. So $x\wedge\neg y$ is realized by a single neuron with pre-activation $x-y$ and quadratic activation $\tfrac{z^2+z}{2}$.

## Summary

- **Linear pre-activation + monotonic activation** (sigmoid/step): only linearly separable functions (AND, OR, NAND, NOR, NOT) — XOR/XNOR excluded, as the talk shows.
- **Linear pre-activation + quadratic activation**: *every* 2-input Boolean function becomes representable by a single neuron, because the quadratic's non-monotonicity supplies exactly the extra expressive power needed — but you must choose the weights $(w_1,w_2,b)$ to merge two truth-table rows that already agree on output, reducing the fitting problem from 4 points to the 3 a quadratic can exactly match.

This is a nice complement to the "quadratic neuron" $y = \mathbf{x}^TA\mathbf{x}+\mathbf{b}^T\mathbf{x}+c$ formulation mentioned earlier — that version has *even more* free parameters (it includes cross-terms like $xy$ directly), so it can realize any 2-input Boolean function without needing this row-merging trick at all, since e.g. $xy$ alone already breaks linear separability. Oliveira's construction is the more constrained, and in that sense more elegant/minimal, version: one scalar activation shape, reused across all six symmetric functions just by changing three interpolation targets.

> Is this a “new” result or is it already known in the literature? If so, where?

Good news — this is a well-established idea in the literature, appearing in several independent lines of work. Let me lay out where it comes from and how each strand relates to what we derived.

**1. The core fact — "a single neuron with a non-monotonic activation can solve XOR" — is well documented**

This is essentially the standard rebuttal to the Minsky–Papert XOR critique, and it recurs across at least three separate research communities:

- **Quadratic/higher-order neuron literature.** The natural extension of the standard neuron model with hyperplane decision boundaries is to consider neurons with quadric surfaces as decision boundaries, computed as g(xᵀQx + wᵀx + b), where Q is a symmetric matrix — historically such higher-order neurons were considered but didn't gain popularity due to the added parameters and computational cost. This is exactly the general quadratic-neuron formulation you asked about earlier, and papers like Noel et al.'s "Efficient Vectorized Backpropagation Algorithms for Training Feedforward Networks Composed of Quadratic Neurons" explicitly train a single such neuron to solve XOR.

- **The "oscillatory activation" literature (GCU, etc.).** Gidon et al. discovered a new type of pyramidal neuron in the human cerebral cortex capable of individually learning XOR — a task impossible for single artificial neurons using sigmoidal, ReLU, or other standard monotonic activations, since all known activation functions require a 3-layer network to learn XOR. This motivated a line of work (Noel's GCU/oscillatory-activation papers) explicitly framed around your exact question: the decision boundary of a neuron a=g(z) is where g(z)=0; if that's the only zero, the boundary is a single hyperplane, but activations with two or more zeros can produce the two hyperplanes XOR needs. A pure quadratic $f(z)=az^2+bz+c$ has (generically) two zeros, which is precisely why it works — this is the deeper reason behind the "two-hyperplane" geometric picture, complementary to the Lagrange-interpolation argument I gave you.

- **General survey statement.** A single neuron can realize a non-monotonous Boolean function if it uses a more complex activation function, like a polynomial or trigonometric one — this is stated plainly as a known fact in Kureichik & Kureichik's "Neural Networks — A Model of Boolean Functions" (2002).

**2. The specific "quadratic transformation for XOR" construction — independently rediscovered**

A Medium article by Lucas Araújo (2018) works through essentially the same derivation you and I did: starting from a 2-layer XOR network, he shows the learned hyperplanes are approximately parallel, and factors a quadratic polynomial whose roots are those two hyperplanes, yielding a single-neuron XOR representation via a quadratic transformation applied to a linear combination of inputs. That's structurally identical to Oliveira's $\beta(x+y)=1-(x+y-1)^2$ — a parabola vanishing at the two "boundary" values.

**3. What appears genuinely distinctive about Oliveira's version**

None of the papers above frame the construction the way Oliveira does — as a byproduct of **translating Boolean algebra into {0,1}-arithmetic** (Zadeh/Cover's $a\vee b = a+b-ab$, $a\oplus b=a+b-2ab$) and then *treating that arithmetic formula itself as the activation function*. The mainstream ML literature instead arrives at quadratic/oscillatory single-neuron XOR solutions from the *opposite* direction — geometrically (decision boundaries, hyperplane counting) or via gradient-based training/curve-fitting, not through this logic→arithmetic reduction. So:

- **Known and multiply-rediscovered:** the general result "single neuron + quadratic (or other non-monotonic) activation ⇒ XOR (and more generally, any 2-input Boolean function) is realizable."
- **Not obviously already in the ML literature (as far as I can find):** Oliveira's specific *derivation path* — get the activation for free from the $\{0,1\}$-idempotent arithmetic encoding of Boolean connectives, rather than from decision-boundary geometry or curve fitting.

Your Lagrange-interpolation generalization (row-merging to go from 4 truth-table constraints to 3 quadratic coefficients) is, as far as I can tell from this search, a clean way of stating something that's implicit in the quadratic-neuron papers but I did not find written out explicitly in exactly that form — I'd treat it as a reasonable, likely-novel-in-presentation but not conceptually new synthesis, rather than either a textbook-standard result or something wholly original. If you want, I can search specifically for Zangeneh Kamali/Noel's more recent quadratic-neuron papers or the Boolean-function-realizability literature (e.g. threshold logic / "P-realizable" functions referenced in doc 4) to see if the exact interpolation framing has been published.

> Interesting - even more so knowing that, as acknowledged in the talk, such “translating Boolean algebra into {0,1}-arithmetic” is nothing but George Boole’s original approach to formal logic, in 1847…

That's a genuinely satisfying closure to the whole thread — and it's not just a cute coincidence, since the talk's own postscript flags it directly: Oliveira only discovered *after* preparing the talk that Boole's 1847 *Mathematical Analysis of Logic* was already built on treating logical operations as ordinary algebraic ones over the same underlying symbols used for quantity — Boole's own words, as quoted in the slides, are that the laws governing $x(u+v)=xu+xv$ etc. are "sufficient for the basis of a Calculus" precisely because propositional symbols obey the same algebra as quantities.

So the lineage you're pointing at is a real loop, not just a resemblance:

- **1847 — Boole**: logic *is* algebra, symbols for propositions obey ordinary arithmetic laws (with the added idempotency constraint $x^2=x$, which is what actually marks it as classical/Boolean rather than general arithmetic).
- **1965 — Zadeh, crediting Cover** in a footnote: generalizes Boole's $\{0,1\}$ arithmetic to $[0,1]$ (fuzzy logic), and in doing so incidentally re-derives the "dual" arithmetic form of OR, $a+b-ab$, that is Boole's algebra as a special case.
- **Oliveira's talk**: goes back to Cover/Zadeh's footnote, restricts to $\{0,1\}$ deliberately (bringing back Boole's idempotency axiom $a^2=a$ that Zadeh had explicitly relaxed), and mines it for circuit design — arriving at $\beta(z)=1-(z-1)^2$ for XOR.
- **20th–21st century ML (independently, geometrically)**: rediscovers that non-monotonic/quadratic single-neuron activations solve XOR — via decision-boundary counting, gradient descent, or biological-neuron motivation — with no apparent awareness of the Boolean-algebra derivation route.

What's nice is that the *idempotency axiom* $a^2=a$ is really doing double duty across the whole arc. It's what makes Boole's algebra specifically classical propositional logic rather than a general ring; it's exactly the axiom Zadeh notes fails once you move to fuzzy $[0,1]$-logic; and — this is the part I find sharpest — it's also *why* $\beta(z)=1-(z-1)^2$ can be literally read off from expanding $1-(a+b-1)^2$ using $a^2=a,\,b^2=b$: the "quadratic activation" isn't an arbitrary curve-fitting trick, it's the residue left over once you substitute the idempotency identity into an otherwise generic degree-2 expansion. So the quadratic *shape* of the activation is, in a real sense, a direct algebraic fingerprint of Boolean idempotency — which ties your original "what is a quadratic activation, formally" question back to an 1847 axiom via a fairly short chain, even though the ML papers arrived at the same functional form from a completely disconnected direction 150+ years later.

(chatGPT)

> I think I read somewhere that von Neumann had a negative opinion about formal logic as a branch of mathematics. Can you find anything about this?

Yes. You are remembering a real remark, and it is stronger than merely saying that von Neumann disliked *formalism*. He explicitly criticized **formal logic as a mathematical discipline**, although he did not reject logic itself.

The clearest source is a 1948 lecture by von Neumann, **“The General and Logical Theory of Automata,”** delivered at the Hixon Symposium in Pasadena. It was subsequently published in *The World of Mathematics* (1956) and in von Neumann's *Collected Works*. The relevant passage is on p. 302–303 of the latter. ([Department of Computer Science][1])

His formulation is remarkably blunt:

> “There exists today a very elaborate system of formal logic, and, specifically, of logic as applied to mathematics. This is a discipline with many good sides, but also with certain serious weaknesses.”

He then says that formal logic is **“one of the technically most refractory parts of mathematics”**, because its rigid, all-or-none concepts have little contact with the continuous concepts of real and complex numbers. He contrasts this with analysis, which he calls the most successful and best-developed part of mathematics. ([Department of Computer Science][1])

And he goes further: formal logic, because of its methodology, is

> “cut off from the best cultivated portions of mathematics, and forced onto the most difficult part of the mathematical terrain, into combinatorics.”

That's particularly interesting coming from von Neumann, since he was himself a major contributor to combinatorics, set theory, mathematical logic, and the theory of computing. So this isn't simply a mathematician dismissing an area he didn't understand.

### But there is an important qualification

I would **not** characterize von Neumann's position as “he thought formal logic was bad mathematics” or “he was opposed to mathematical logic.”

In fact, his early career was deeply involved with logic and foundations. In the 1920s he worked on Hilbert's proof theory and published *Zur Hilbertschen Beweistheorie* (1927). He was also one of the first people to recognize the significance of Gödel's incompleteness results. In a November 1930 letter to Gödel, von Neumann independently arrived at essentially the second incompleteness theorem. ([Stanford Encyclopedia of Philosophy][2])

And his attitude toward Gödel was certainly not dismissive: much later he described Gödel's achievement as **“singular and monumental”** and a landmark in modern logic. ([Institute for Advanced Study][3])

So there is an apparent tension:

**Early von Neumann:** deeply engaged in formal logic and foundations.

**Later von Neumann:** increasingly skeptical that formal logic, in its existing form, was the right mathematical framework for important problems.

That distinction becomes especially clear in the 1948 automata lecture.

### What was he actually objecting to?

His target seems to have been the **discrete, purely symbolic character of formal logic**, rather than deduction or rigor as such.

He was thinking about computers and automata. Digital computers are naturally describable in terms of Boolean/discrete operations, and therefore seem to invite a purely logical theory. Von Neumann thought this was misleading.

His argument was roughly:

1. Formal logic deals with propositions as **all-or-none** objects.
2. Consequently, its natural mathematics is discrete and combinatorial.
3. But many of the most powerful mathematical techniques come from **analysis**, where quantities vary continuously.
4. Real physical automata—especially biological systems—are not perfectly discrete. They involve noise, timing, degradation, continuous variables, etc.
5. Therefore, a genuinely satisfactory theory of automata should somehow incorporate analysis rather than simply extending formal logic.

The next part of the lecture is particularly revealing. After criticizing formal logic, he argues that the theory of automata needs to take account of something that traditional formal logic largely ignores: **the number of steps required to achieve a result**, rather than merely whether a result can be achieved in a finite number of steps. ([LessWrong][4])

That's a very modern-sounding criticism of the traditional foundations of computer science: **computational complexity matters, not merely computability.**

### There is also a historical irony

Von Neumann's criticism occurred just as he was helping create the field that would eventually make formal logic enormously important to computer science.

He was essentially saying: *Don't assume that because digital machines are discrete, their deepest mathematical theory will simply be formal logic.*

His proposed alternative was considerably more **analytical** and concerned with physical processes, probability, timing, robustness, and the interaction between continuous and discrete phenomena. Modern computer science subsequently went in both directions: formal logic became enormously important, while numerical analysis, probability, dynamical systems, complexity theory, information theory, etc. also became central.

So your recollection is quite well-founded. The particularly striking sentence to remember is:

> **“Everybody who has worked in formal logic will confirm that it is one of the technically most refractory parts of mathematics.”** ([Department of Computer Science][1])

There is a good scholarly literature around this passage. One especially useful historical discussion is in the *Rutherford Journal*, which places the remark in the context of von Neumann's broader conception of automata and his dissatisfaction with traditional mathematical logic. ([rutherfordjournal.org][5])

If you're interested, I can also dig into **what von Neumann meant by this philosophically—especially whether he was criticizing Hilbert-style formalism, symbolic logic generally, or something closer to today's notion of theoretical computer science.** That turns out to be a surprisingly interesting question.

[1]: https://www.cs.jhu.edu/~basu/Papers/VonNeumann1951.pdf?utm_source=chatgpt.com "John von 
Neumann 
 
COLLECTED WORKS"
[2]: https://plato.stanford.edu/entries/proof-theory/appendix-a.html?utm_source=chatgpt.com "Proof Theory > A. Formal Axiomatics: Its Evolution and Incompleteness (Stanford Encyclopedia of Philosophy)"
[3]: https://www.ias.edu/ideas/2007/godelian-challenge?utm_source=chatgpt.com "The Gödelian Challenge | Ideas | Institute for Advanced Study"
[4]: https://www.lesswrong.com/posts/Eve2miBH8wAhhxNwT/von-neumann-s-critique-of-automata-theory-and-logic-in?utm_source=chatgpt.com "Von Neumann’s critique of automata theory and logic in computer science — LessWrong"
[5]: https://www.rutherfordjournal.org/article030102.html?utm_source=chatgpt.com "The Rutherford Journal - The New Zealand Journal for the History and Philosophy of Science and Technology"

