output "zone_id" {
  description = "The Route53 Zone ID for the intimitrons.ca domain"
  value       = aws_route53_zone.domain.zone_id
}

output "name_servers" {
  description = "The assigned name servers for the intimitrons.ca domain"
  value       = aws_route53_zone.domain.name_servers
}
