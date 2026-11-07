# OSR v1 files

`v1/` holds the Calculus rules that the OSR v1 fragment can state, in the
OSR v1 interchange format (Specification, `docs/osr-v1.md`).  These files are
generated, never edited by hand:

| File | Content |
|---|---|
| `v1/calculus.osr.json` | 26 rules: derivatives `diff(λx. F) ⟶ λx. G` and two-sided limits `limit(a, both_sides, λx. F) ⟶ L`, with lambdas as `OMBIND fns1#lambda`, and verification records over ℝ and ℂ. |
| `v1/calculus.report.json` | Machine-readable audit: metrics per domain and the rules not migrated. |
| `v1/calculus.report.md` | The same audit for humans. |

## Where they come from

1. `OpenSymbolicRules/Lean` states each rule with Mathlib's analysis
   (`OSR/Calculus.lean`): a derivative rule is `HasDerivAt` wherever the
   function is defined near the point; a limit rule is `Tendsto` along the
   punctured neighbourhood.
2. `OpenSymbolicRules/Verification` publishes the export under
   `reports/<source digest>/` and can rebuild it independently.
3. This repository copies the published files.  The CI checks that they
   validate against the v1 schema, share one source digest, and are
   byte-identical to the published report.

## Differences from v0.1

The v0.1 files in `rules/` remain for the v0.1 loader of OpenSymbolicRules.jl.
In v1:

- 26 of the 32 rules are migrated: the derivatives of `x`, `sin`, `cos`,
  `exp`, `ln`, `tan`, `arctan`, of the hyperbolic functions, of `cot`, `sec`,
  `csc`, of the inverse trigonometric and hyperbolic functions, and the five
  limits at 0.  All 26 are proved over ℝ and 14 over ℂ, where only `sinh`, `cosh`, `tanh` and `cot`
  have an interpretation among the new functions, the complex logarithm is
  not differentiable on its branch cut, and the complex `arctan` mapping is
  provisional.  `Sqrt` becomes `arith1#root(x, 2)`;
- 6 rules are not migrated (the report lists them): 3 need the side
  condition `FreeQ`, which has no OpenMath symbol, and 3 use `osr#Apply`,
  which is not an OpenMath symbol;
- a rule applies at the root of a `diff` or `limit` term and keeps the
  input's bound variable; its result is a lambda or a value, so
  normalization takes one step at most.

## Updating

```bash
just update-v1 <Verification>/reports/<digest>
```

Then update the Verification commit pinned in the CI workflow.
