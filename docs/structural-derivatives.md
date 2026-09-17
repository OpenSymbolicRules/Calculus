# Structural derivatives

The `2.3-structural-derivatives` file expresses linearity over sums and
differences, and the product rule, allowing its results to be simplified
further by the elementary derivative rules. Its product rule is ordered:

`D(f g) = f D(g) + D(f) g`.

This order must not be normalized by a consumer unless multiplication is known
to be commutative. It therefore remains valid for matrix- and operator-valued
symbolic expressions for which the derivative exists.
