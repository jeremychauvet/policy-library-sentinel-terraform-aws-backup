# Sentinel policies for AWS Backup

This repository provide Sentinel policies for AWS Backup to be used on Terraform Cloud or Terraform Enterprise.

## Policies

| Scope        | Rule                              | Description                                                                                    | Category | Enforcement level | Links                                                    |
|--------------|-----------------------------------|------------------------------------------------------------------------------------------------|----------|-------------------|----------------------------------------------------------|
| Backup rules | deny-snapshot-infinite-retention  | Prevent creation or modification of a Backup Plan rule with an infinite retention of snapshots | FinOps   | hard-mandatory    | [doc](docs/policies/deny-snapshot-infinite-retention.md) | 
