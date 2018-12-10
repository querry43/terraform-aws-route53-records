# terraform-aws-route53-records

This terraform module creates one or more dns records in an aws Route53 zone.

Example:

    resource aws_route53_zone zone {
      name = "example.net"
    }
    
    module dns_records {
      source  = "git@github.com:querry43/terraform-aws-route53-records.git"
      zone    = aws_route53_zone.zone
    
      recordsets = [
        {
          name = "www"
          type = "A"
          ttl = 300
          records = [
            "64.193.62.63"
          ]
        },
        {
          name = "*"
          type = "CNAME"
          ttl = 300
          records = [
            "www"
          ]
        }
      ]
    }
