gen:
	./scripts/codegen.sh

clean:
	rm -rf lib
	rm stack.yaml *.cabal Setup.hs

.PHONY: clean gen
