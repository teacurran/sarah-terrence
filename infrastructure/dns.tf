# Route 53 for domain
resource "aws_route53_zone" "main" {
  name = var.domain_name
  tags = var.common_tags
}

resource "aws_route53_record" "root-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.root_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.root_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.www_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.www_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.ssl_certificate.domain_validation_options : dvo.domain_name => {
      name    = dvo.resource_record_name
      record  = dvo.resource_record_value
      type    = dvo.resource_record_type
      zone_id = aws_route53_zone.main.zone_id
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = each.value.zone_id
}





# .org
# .org
# .org

resource "aws_route53_zone" "dot_org" {
  name = var.domain_name_2
  tags = var.common_tags
}

resource "aws_route53_record" "dot_org-a" {
  zone_id = aws_route53_zone.dot_org.zone_id
  name    = var.domain_name_2
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.dot_org-redirect.domain_name
    zone_id                = aws_cloudfront_distribution.dot_org-redirect.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "dot_org-www-a" {
  zone_id = aws_route53_zone.dot_org.zone_id
  name    = "www.${var.domain_name_2}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.dot_org-www.domain_name
    zone_id                = aws_cloudfront_distribution.dot_org-www.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "dot_org-cert_validation" {
  for_each = {
  for dvo in aws_acm_certificate.dot_org.domain_validation_options : dvo.domain_name => {
    name    = dvo.resource_record_name
    record  = dvo.resource_record_value
    type    = dvo.resource_record_type
    zone_id = aws_route53_zone.dot_org.zone_id
  }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = each.value.zone_id
}

