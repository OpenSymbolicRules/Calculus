# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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
