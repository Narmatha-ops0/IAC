terraform {
  backend "s3" {
    bucket = "opszero-ac4aa811-da73-4f3e-b925-8eb6d243606b"
    key    = "ac4aa811-da73-4f3e-b925-8eb6d243606b/a1751e65-e60a-4da0-84e8-70bf96bfc021/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}