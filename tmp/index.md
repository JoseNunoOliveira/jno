index
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
