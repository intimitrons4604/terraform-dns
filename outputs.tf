output "domain_name" {
  description = "The domain name"
  value       = aws_route53_zone.domain.name
}

output "zone_id" {
  description = "The Route53 Zone ID for domain_name"
  value       = aws_route53_zone.domain.zone_id
}

output "name_servers" {
  description = "The assigned name servers for domain_name"
  value       = aws_route53_zone.domain.name_servers
}
