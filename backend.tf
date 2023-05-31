terraform {
  cloud {
    organization = "tafari"

    workspaces {
      name = "test"
    }
  }
}