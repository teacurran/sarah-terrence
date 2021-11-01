locals {
  bucket_name = "${var.bucket_name}-${var.environment}"
}

# S3 bucket for website.
resource "aws_s3_bucket" "www_bucket" {
  bucket = local.bucket_name
  acl    = "public-read"

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://${var.domain_name}"]
    max_age_seconds = 3000
  }

  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  tags = var.common_tags
}

data "aws_iam_policy_document" "www_bucket" {
  statement {
    sid = "mostlycats-${var.environment}-policy"
    effect = "Allow"
    actions = [
      "s3:GetObject"
    ]
    resources = [
      "arn:aws:s3:::${local.bucket_name}/*"
    ]
    principals {
      identifiers = [
        "*"
      ]
      type = "AWS"
    }
  }
}

resource "aws_s3_bucket_policy" "www_bucket" {
bucket = aws_s3_bucket.www_bucket.id
policy = data.aws_iam_policy_document.www_bucket.json
}



# S3 bucket for redirecting non-www to www.
#resource "aws_s3_bucket" "root_bucket" {
#  bucket = var.bucket_name
#  acl    = "public-read"
#  policy = templatefile("templates/s3-policy.json", { bucket = var.bucket_name })
#
#  website {
#    redirect_all_requests_to = "https://www.${var.domain_name}"
#  }
#
#  tags = var.common_tags
#}