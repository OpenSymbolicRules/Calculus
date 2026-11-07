# Structural derivatives

## OSR v1 migration status

The three v0.1 rules in this file remain outside the certified v1 ruleset.
Their patterns assume that the operands have derivatives, but the rules carry
no conditions that establish this. For example, let `f(x) = sqrt(x^2)` and
`g(x) = -sqrt(x^2)`. Both are defined everywhere and `f + g` is the constant
zero function, while neither `f` nor `g` is differentiable at zero. Thus the
sum rule's right-hand side requires derivative values that do not exist there.
For the difference take `f = g = sqrt(x^2)`, so `f - g = 0`; for the
product take the same operands, so `f g = x^2`. Both composites have a
derivative at zero while neither operand does.

These witnesses are proved in `OpenSymbolicRules/Lean`,
`OSR/Calculus.lean`, by `structuralSum_missingPremise`,
`structuralDifference_missingPremise` and `structuralProduct_missingPremise`.
They use Lean 4.35.0 and Mathlib revision
`56a005855ea17e0b0958f73ec801ae140b0a1679`. They establish the missing
premises; they do not assert a `CRule.Holds` refutation for structural rules,
which the current calculus fragment cannot represent.

The v1 calculus statements certify `HasDerivAt` under the rule's stated
definedness assumptions. OSR v1 currently has no condition for asserting that
each matched operand is differentiable at the point. Adding that condition
silently would change the source rule, so these rules stay reported as
not migrated. Their `osr#Apply` node is also outside the v1 OpenMath fragment.

With explicit differentiability premises, the corresponding sum, difference,
and product theorems are valid; they can be reconsidered if the interchange
format gains a sound way to express those premises.

## Original v0.1 behavior

The `2.3-structural-derivatives` file expresses linearity over sums and
differences, and the product rule, allowing its results to be simplified
further by the elementary derivative rules. Its product rule is ordered:

`D(f g) = f D(g) + D(f) g`.

This order must not be normalized by a consumer unless multiplication is known
to be commutative. It therefore remains valid for matrix- and operator-valued
symbolic expressions for which the derivative exists.
