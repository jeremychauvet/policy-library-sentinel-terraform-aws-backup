.PHONY: run-tests
.DEFAULT: run-tests

run-tests:
	sentinel test ./policies/deny-snapshot-infinite-retention/deny-snapshot-infinite-retention.sentinel