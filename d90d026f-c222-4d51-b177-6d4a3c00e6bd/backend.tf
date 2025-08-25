terraform {
  backend "s3" {
    bucket = "opszero-ac4aa811-da73-4f3e-b925-8eb6d243606b"
    key    = "ac4aa811-da73-4f3e-b925-8eb6d243606b/d90d026f-c222-4d51-b177-6d4a3c00e6bd/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}