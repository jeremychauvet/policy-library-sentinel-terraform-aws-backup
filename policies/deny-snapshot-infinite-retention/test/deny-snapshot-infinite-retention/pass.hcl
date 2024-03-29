mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-snapshot-30-days-retention.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}