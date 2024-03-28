# Deny backup plans to keep snapshots forever

If a Backup Vault is locked in "compliance mode" and lifecycle not set to not expire snapshots (setting `delete_after`), the only option to delete it is to close the AWS account.

The following code will cause the test to fail:

```terraform
resource "aws_backup_vault" "main" {
  name = "main"
}

resource "aws_backup_plan" "default" {
  name = "sentinel-terraform-aws-backup"
  
  rule {
    rule_name         = "keep-snapshots-forever"
    target_vault_name = aws_backup_vault.main.name
    schedule          = "cron(0 12 * * ? *)"

    lifecycle {
      delete_after = 0 # Infinite.
    }
  }
}
```

To pass the test, the setting `delete_after` must be greater than 0:

```terraform
resource "aws_backup_vault" "main" {
  name = "main"
}

resource "aws_backup_plan" "default" {
  name = "sentinel-terraform-aws-backup"

  rule {
    rule_name         = "keep-snapshots-forever"
    target_vault_name = aws_backup_vault.main.name
    schedule          = "cron(0 12 * * ? *)"

    lifecycle {
      delete_after = 30 # days.
    }
  }
}
```