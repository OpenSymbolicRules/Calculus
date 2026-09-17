# Structural derivatives

The `2.3-structural-derivatives` profile applies the linearity and product
rules before the elementary derivative rules. Its product rule is ordered:

`D(f g) = f D(g) + D(f) g`.

This order must not be normalized by a consumer unless multiplication is known
to be commutative. It therefore remains valid for matrix- and operator-valued
symbolic expressions for which the derivative exists.
