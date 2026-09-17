# Fundamental limits

The limits profile provides direct rules for these real two-sided limits:

- `lim(x → 0) sin(x) / x = 1`;
- `lim(x → 0) tan(x) / x = 1`;
- `lim(x → 0) (1 - cos(x)) / x² = 1 / 2`.
- `lim(x → 0) (exp(x) - 1) / x = 1`;
- `lim(x → 0) log(1 + x) / x = 1`.

They are direct, fully specified rewrites. General sum, product, and quotient
limit laws are deliberately not encoded yet: their sound application requires
explicit existence and finiteness hypotheses that are not represented in the
current constraint vocabulary.

`Exp` and `Log` have the OpenMath semantics `transc1#exp` and `transc1#ln`,
so consumers retain the relevant analytic domain and branch conventions.
