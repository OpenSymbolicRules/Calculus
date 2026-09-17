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

Derivative rules include linearity and the order-preserving product rule, so
consumers can compose elementary derivatives without assuming commutativity.

The limits profile includes the standard sine, tangent, and second-order cosine
limits at zero.

## License

This repository is licensed under the [MIT License](LICENSE). OpenMath
identifiers are referenced for semantic interoperability; see [NOTICE.md](NOTICE.md).
