# Tangent derivative

The elementary derivative profile includes
`D(tan(x)) = 1 / cos(x)^2`. It uses OpenMath `transc1#tan`,
`transc1#cos`, and `arith1#power`, rather than requiring a separate secant
operator in the result.

Like the usual tangent function, the rule applies on its domain of definition.

The same elementary profile also provides `D(sinh(x)) = cosh(x)`,
`D(cosh(x)) = sinh(x)`, and `D(tanh(x)) = 1 / cosh(x)^2`, using OpenMath
`transc1` symbols. The last representation avoids adding a nonstandard
hyperbolic-secant head.
