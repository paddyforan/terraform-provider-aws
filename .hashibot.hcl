behavior "regexp_issue_labeler_v2" "service_labels" {
  regexp = "(\\* ?`?|- ?`?|data \"|resource \")aws_(\\w+)"

  label_map = {
    "service/acm" = [
      "aws_acm_",
    ],
    "service/acmpca" = [
      "aws_acmpca_",
    ],
    "service/ec2" = [
      "aws_route(\"|`|$)",
    ],
    "service/route53" = [
      # Catch aws_route53_XXX but not aws_route53_resolver_
      # Golang regexp does not support negative lookaheads
      "aws_route53_([^r]|r[^e]|re[^s])",
    ],
    "service/route53resolver" = [
      "aws_route53_resolver_",
    ],
  }
}
