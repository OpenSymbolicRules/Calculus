# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- v1 artifacts refreshed from Verification report `a818d70c…` (the
  Integration audit grows to 523 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `37b59f6e…` (the
  Integration audit grows to 408 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `86e9259d…` (the
  Integration audit grows to 401 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `4a53a417…` (the
  Integration audit grows to 394 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `5eeda009…` (the
  Integration audit grows to 391 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `5df371f5…` (the
  Integration audit grows to 389 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `13c7663e…` (the
  Integration audit grows to 385 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `c508b1ac…` (the
  Integration audit grows to 381 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `93cdf533…` (the
  Integration audit grows to 377 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `99ef8103…` (the
  Integration audit grows to 375 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `e85967a3…` (the
  Integration audit grows to 373 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `aba1d4f5…` (the
  Integration audit grows to 359 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `9caf6485…` (Integration
  branch-cut refutations; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `f3212525…` (Integration
  refutations carried to the other domain; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `1255db02…` (the
  Integration audit grows to 320 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `65b5cda4…` (the
  Integration audit grows to 319 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `fbfcffe6…` (the
  Integration audit grows to 316 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `322b4cca…` (the
  Integration audit grows to 314 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `d5681743…` (the
  Integration audit grows to 310 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `621dc8cf…` (the
  Integration audit grows to 305 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `b96dae79…` (the
  Integration audit grows to 303 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `22741da9…` (the
  Integration audit grows to 296 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `c6220e09…` (the
  Integration audit grows to 295 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `0a089a2f…` (the registry
  gains `relation1#eq`; this rule set is unchanged apart from the digest).
- v1 artifacts refreshed from Verification report `5bddaed2…` (the
  Integration audit grows to 183 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `65358b60…` (the
  Integration audit grows to 182 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `64f0e4b1…` (the
  Integration audit grows to 180 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `a956c4cc…` (the
  Integration audit grows to 178 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `029e916d…` (the
  Integration audit grows to 176 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `d53ec774…` (the
  Integration audit grows to 174 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `0a34c711…` (the
  Integration audit grows to 171 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `9705f0ef…` (the
  Integration audit grows to 169 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `29465fa3…` (the
  Integration audit grows to 165 rules; this rule set is unchanged).
- v1 artifacts refreshed from Verification report `577cca61…` (the
  Integration audit grows to 156 rules; this rule set is unchanged).
- A `just doc` entry point using Documenter and DocumenterLandingPage,
  including `llms.txt` and `llms-full.txt` under `docs/build/`.
- OSR v1 rule set and verification report in `v1/` (29 derivative and limit
  rules from `OpenSymbolicRules/Lean`, the v0.1 power rule refuted), copied from the published
  `OpenSymbolicRules/Verification` report, with a CI check of schema
  validity, source digest and byte identity (`scripts/check-v1.sh`).
- `justfile` entry points (`check`, `validate`, `closure`, `v1`, `update-v1`).

### Changed
- Refresh the generated OSR v1 files from Lean source digest `dcad68f4…`
  (the calculus rewriter decides closed conditions; this rule set is
  unchanged).
- Refresh the v1 files from Lean source digest `a8eff8f4…` (Integration rules
  with residual integrals; the Calculus rules are unchanged).
- Refresh the v1 files from Lean source digest `be6f672a…` (Integration rules
  with conditions; the Calculus rules are unchanged).
- Refresh the v1 files from Lean source digest `68dfb6f0…`, which adds the
  Integration rule set; the Calculus rules and their certification are
  unchanged.
- Refresh the v1 files from Lean source digest `4032322e…` and pin the
  corresponding Verification report in CI.
- Document and report the missing operand differentiability premises of the
  three structural v0.1 rules, with Lean witnesses for sums, differences
  and products. These rules remain outside the certified v1 catalogue.
- Updated the Specification submodule to the OSR v1 draft.

### Fixed
- The structural derivative rules now compose with the base rules. They
  embedded `Derivative(Lambda(x, f))` where an expression belongs, so once the
  base rules turned it into `Lambda(x, f')` the answer kept the lambdas nested —
  `Lambda(x, Add(Lambda(x, Cos(x)), ...))` — and no sum could be differentiated
  term by term. Each nested derivative is now applied at the bound variable with
  `Apply`, which a host reduces. The OSR grammar requires a head to be a name
  (OSR-X-004), so a lambda cannot stand in head position and the application
  needs a head of its own.

### Added
- CI validation that every operator used by a rule has a declared OpenMath
  semantic mapping.
- Stable `identity` values for rule files, completing canonical `identity:id`
  rule identifiers.
- Structural derivative rules for binary sums and products. The product rule
  preserves factor order, making it suitable for noncommutative expressions.
- Structural derivative rule for binary differences.
- Fundamental tangent and second-order cosine limits at zero.
- Machine-readable provenance for every rule.
- Elementary derivative rule for tangent.
- Elementary derivative rules for hyperbolic sine and cosine.
- Elementary derivative rule for hyperbolic tangent.
- Elementary derivative rules for inverse tangent and inverse hyperbolic tangent.
- Elementary derivative rules for inverse sine and inverse cosine on their principal domains.
- Elementary derivative rules for cotangent, secant, and cosecant.
- Elementary derivative rules for hyperbolic cotangent, secant, and cosecant.
- Elementary derivative rules for inverse hyperbolic sine and cosine on their principal domains.
- Fundamental exponential and logarithmic limits at zero.
- Initial structure for the Calculus module
- Submodule link to OSR Specification schemas
- Elementary derivative rules for identity, sine, cosine, exponential, and natural logarithm.
- GitHub Actions validation of schemas, rules, and test fixtures.
- MIT licensing, an OpenMath attribution notice, and SPDX metadata in the rule manifest.

### Changed
- Declare the OpenMath semantics of arithmetic heads used by inverse-function
  derivative rules.
- Represented limits and derivatives with their OpenMath `limit1` and `calculus1` semantics.
