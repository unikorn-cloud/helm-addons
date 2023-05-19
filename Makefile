CHARTS = cert-manager-issuers

.PHONY: test
test:
	set -e; \
	for chart in $(CHARTS) $(USER_CHARTS); do \
		helm lint --strict charts/$${chart}; \
		helm template charts/$${chart} > /dev/null; \
	done
