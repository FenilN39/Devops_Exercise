provider "aws" {

  access_key                  = "test_access_key"
  secret_key                  = "test_secret_key"
  region                      = "us-east-1"

  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3             = "http://localhost:4566"
  }
}


resource "aws_s3_bucket" "test-bucket" {
  bucket = "mynewbucket"
    acl  = "public-read"
    website {
        index_document = "index.html"
        # error_document = "error.html"
    }
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.test-bucket.id
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}





