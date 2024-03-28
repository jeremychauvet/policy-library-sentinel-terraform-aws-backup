mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-snapshot-infinite-retention.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}