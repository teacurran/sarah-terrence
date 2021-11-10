resource "aws_acm_certificate" "dot_pizza" {
  provider                  = aws.acm_provider
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]
  validation_method         = "DNS"

  tags = var.common_tags

  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_acm_certificate_validation" "dot_pizza" {
  provider        = aws.acm_provider
  certificate_arn = aws_acm_certificate.dot_pizza.arn
  validation_record_fqdns = [for record in aws_route53_record.dot_pizza-cert_validation : record.fqdn]
}


resource "aws_acm_certificate" "dot_org" {
  provider                  = aws.acm_provider
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name_2}"]
  validation_method         = "DNS"

  tags = var.common_tags

  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_acm_certificate_validation" "dot_org" {
  provider        = aws.acm_provider
  certificate_arn = aws_acm_certificate.dot_org.arn
  validation_record_fqdns = [for record in aws_route53_record.dot_org-cert_validation : record.fqdn]
}
