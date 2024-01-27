output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.this.arn
}

output "domain_name" {
  description = "Domain name for which the certificate is issued"
  value       = aws_acm_certificate.this.domain_name
}

output "status" {
  description = "Status of the certificate"
  value       = aws_acm_certificate.this.status
}

output "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate"
  value       = aws_acm_certificate.this.renewal_summary
}
