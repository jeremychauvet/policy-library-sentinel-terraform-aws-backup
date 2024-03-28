policy "deny-snapshot-infinite-retention" {
  source = "./policies/deny-snapshot-infinite-retention/deny-snapshot-infinite-retention.sentinel"
  enforcement_level = "hard-mandatory"
}
