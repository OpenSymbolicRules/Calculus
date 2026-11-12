# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- A `just doc` entry point using Documenter and DocumenterLandingPage,
  including `llms.txt` and `llms-full.txt` under `docs/build/`.
- OSR v1 rule set and verification report in `v1/` (29 derivative and limit
  rules from `OpenSymbolicRules/Lean`, the v0.1 power rule refuted), copied from the published
  `OpenSymbolicRules/Verification` report, with a CI check of schema
  validity, source digest and byte identity (`scripts/check-v1.sh`).
- `justfile` entry points (`check`, `validate`, `closure`, `v1`, `update-v1`).

### Changed
- Refresh the v1 files from Lean source digest `a6036490…` (Integration rules
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
