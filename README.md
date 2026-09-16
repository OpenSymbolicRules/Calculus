# Open Symbolic Rules (OSR) - Calculus Module

This repository is the **Calculus Module** of the [OpenSymbolicRules](https://github.com/OpenSymbolicRules) standard.

It provides a universal, language-agnostic JSON format for computing:
- **Limits**
- **Derivatives**
- (Note: Antiderivatives are hosted in the specialized `Integration` repository)

## Structure
- `rules/`: Calculus rewriting rules in JSON format
- `tests/`: Test fixtures to validate implementations
- `Specification/`: Submodule pointing to the core OSR JSON schemas

Calculus rules use the OpenMath `calculus1`, `limit1`, and `fns1` Content
Dictionaries to preserve the binding semantics of derivatives and limits.
