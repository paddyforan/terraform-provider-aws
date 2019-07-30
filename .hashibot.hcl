behavior "regexp_issue_labeler_v2" "service_labels" {
  regexp = "(\\* ?`?|- ?`?|data \"|resource \")aws_(\\w+)"

  label_map = {
    "service/acm" = [
      "aws_acm_",
    ],
    "service/acmpca" = [
      "aws_acmpca_",
    ],
  }
}