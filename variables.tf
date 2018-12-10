variable zone {
  description = "aws_route53_zone zone object in which to create records"
  type = object({
    id = string
  })
}

variable recordsets {
  description = "list of objects with name=string, type=string, ttl=number and records=list(string) fields"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
}
