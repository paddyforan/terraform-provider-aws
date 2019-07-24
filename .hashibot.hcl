 behavior "regexp_issue_labeler_v2" "aws_service_labels" {
   regexp = "(\* |data \"|resource \")aws_\\w+"
   label_map = {
   	"label" = [
 		    "resource name",
   	],
   	"service/acmpca" = [
 		    "acmpca"
   	],
		"service/ec2" = [
			"default_subnet",
			"ebs"
		],
   }
}
