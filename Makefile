.PHONY: linters
.SILENT: linters
linters:
	docker run \
		--rm \
		--name linters \
		--env RUN_LOCAL=true \
		--volume $(shell pwd -P):/tmp/lint \
		github/super-linter
