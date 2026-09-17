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

It also includes the inverse functions `D(atan(x)) = 1 / (1 + x^2)` and
`D(atanh(x)) = 1 / (1 - x^2)`. `Atan` and `Atanh` are the OSR atomic heads
whose semantics are respectively OpenMath `transc1#arctan` and
`transc1#arctanh`; their values and derivatives are understood on their
domains of definition.

For inverse sine and cosine, the profile uses the principal-domain forms
`D(asin(x)) = 1 / sqrt(1 - x^2)` and
`D(acos(x)) = -1 / sqrt(1 - x^2)`. `Sqrt` has explicit OpenMath
`arith1#root` semantics (with degree two), so consumers must retain the
OpenMath branch convention rather than treating it as an unconstrained
algebraic square root.

The trigonometric family is completed with
`D(cot(x)) = -1 / sin(x)^2`, `D(sec(x)) = sec(x) tan(x)`, and
`D(csc(x)) = -csc(x) cot(x)`. Their OpenMath heads are `transc1#cot`,
`transc1#sec`, and `transc1#csc` respectively.

Their hyperbolic counterparts are also available:
`D(coth(x)) = -1 / sinh(x)^2`, `D(sech(x)) = -sech(x) tanh(x)`, and
`D(csch(x)) = -csch(x) coth(x)`. These use the OpenMath `transc1` heads
`coth`, `sech`, and `csch` directly.
