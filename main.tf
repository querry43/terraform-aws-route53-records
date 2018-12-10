terraform {
  required_version = ">= 0.12.0"
}

resource aws_route53_record records {
  count = length(var.recordsets)

  zone_id = var.zone.id
  name    = var.recordsets[count.index].name
  type    = var.recordsets[count.index].type
  ttl     = var.recordsets[count.index].ttl
  records = var.recordsets[count.index].records
}
