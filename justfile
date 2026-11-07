# Entry points for the Calculus rule set.

# Everything CI runs, except the comparison with a Verification report.
check: validate closure v1

# Build the documentation and LLM text exports under docs/build/.
doc:
	julia --project=docs -e 'using Pkg; Pkg.instantiate(); include("docs/make.jl")'

# Validate the v0.1 schemas, rules and test fixtures.
validate:
	./scripts/validate.sh

# Every operator used by a v0.1 rule has an OpenMath semantic mapping.
closure:
	python3 Specification/scripts/validate_semantic_closure.py rules

# Check the generated OSR v1 files; pass a Verification report directory to
# also compare them byte for byte.
v1 report="":
	./scripts/check-v1.sh {{report}}

# Copy the v1 files from a Verification report directory, then check them.
update-v1 report:
	cp {{report}}/calculus.osr.json {{report}}/calculus.report.json {{report}}/calculus.report.md v1/
	./scripts/check-v1.sh {{report}}
