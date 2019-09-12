# Catch the following in issues:
# *aws_XXX
# * aws_XXX
# * `aws_XXX`
# -aws_XXX
# - aws_XXX
# - `aws_XXX`
# data "aws_XXX"
# resource "aws_XXX"
# NOTE: Go regexp does not support negative lookaheads
behavior "regexp_issue_labeler_v2" "service_labels" {
  regexp = "(\\* ?`?|- ?`?|data \"|resource \")aws_(\\w+)"

  label_map = {
    "service/acm" = [
      "aws_acm_",
    ],
    "service/acmpca" = [
      "aws_acmpca_",
    ],
    "service/alexaforbusiness" = [
      "aws_alexaforbusiness_",
    ],
    "service/amplify" = [
      "aws_amplify_",
    ],
    "service/apigateway" = [
      # Catch aws_api_gateway_XXX but not aws_api_gateway_v2_
      "aws_api_gateway_([^v]|v[^2]|v2[^_])",
    ],
    "service/apigatewayv2" = [
      "aws_api_gateway_v2_",
    ],
    "service/applicationautoscaling" = [
      "aws_appautoscaling_",
    ],
    "service/applicationdiscoveryservice" = [
      "aws_applicationdiscoveryservice_",
    ],
    "service/applicationinsights" = [
      "aws_applicationinsights_",
    ],
    "service/appmesh" = [
      "aws_appmesh_",
    ],
    "service/appstream" = [
      "aws_appstream_",
    ],
    "service/appsync" = [
      "aws_appsync_",
    ],
    "service/athena" = [
      "aws_athena_",
    ],
    "service/autoscaling" = [
      "aws_autoscaling_",
      "aws_launch_configuration",
    ],
    "service/autoscalingplans" = [
      "aws_autoscalingplans_",
    ],
    "service/batch" = [
      "aws_batch_",
    ],
    "service/budgets" = [
      "aws_budgets_",
    ],
    "service/cloud9" = [
      "aws_cloud9_",
    ],
    "service/clouddirectory" = [
      "aws_clouddirectory_",
    ],
    "service/cloudformation" = [
      "aws_cloudformation_",
    ],
    "service/cloudfront" = [
      "aws_cloudfront_",
    ],
    "service/cloudhsmv2" = [
      "aws_cloudhsm_v2_",
    ],
    "service/cloudsearch" = [
      "aws_cloudsearch_",
    ],
    "service/cloudtrail" = [
      "aws_cloudtrail_",
    ],
    "service/cloudwatch" = [
      "aws_cloudwatch_([^e]|e[^v]|ev[^e]|eve[^n]|even[^t]|event[^_]|[^l]|l[^o]|lo[^g]|log[^_])",
    ],
    "service/cloudwatchevents" = [
      "aws_cloudwatch_event_",
    ],
    "service/cloudwatchlogs" = [
      "aws_cloudwatch_log_",
    ],
    "service/codebuild" = [
      "aws_codebuild_",
    ],
    "service/codecommit" = [
      "aws_codecommit_",
    ],
    "service/codedeploy" = [
      "aws_codedeploy_",
    ],
    "service/codepipeline" = [
      "aws_codepipeline_",
    ],
    "service/codestar" = [
      "aws_codestar_",
    ],
    "service/cognito" = [
      "aws_cognito_",
    ],
    "service/configservice" = [
      "aws_config_",
    ],
    "service/databasemigrationservice" = [
      "aws_dms_",
    ],
    "service/datapipeline" = [
      "aws_datapipeline_",
    ],
    "service/datasync" = [
      "aws_datasync_",
    ],
    "service/dax" = [
      "aws_dax_",
    ],
    "service/devicefarm" = [
      "aws_devicefarm_",
    ],
    "service/directconnect" = [
      "aws_dx_",
    ],
    "service/directoryservice" = [
      "aws_directory_service_",
    ],
    "service/dlm" = [
      "aws_dlm_",
    ],
    "service/dynamodb" = [
      "aws_dynamodb_",
    ],
    "service/ec2" = [
      "aws_ami",
      "aws_availability_zone",
      "aws_customer_gateway",
      "aws_(default_)?(network_acl|route_table|security_group|subnet|vpc)",
      "aws_ebs_",
      "aws_ec2_",
      "aws_egress_only_internet_gateway",
      "aws_eip",
      "aws_flow_log",
      "aws_instance",
      "aws_internet_gateway",
      "aws_key_pair",
      "aws_launch_template",
      "aws_main_route_table_association",
      "aws_network_interface",
      "aws_placement_group",
      "aws_spot",
      "aws_route(\"|`|$)",
    ],
    "service/ecr" = [
      "aws_ecr_",
    ],
    "service/ecs" = [
      "aws_ecs_",
    ],
    "service/efs" = [
      "aws_efs_",
    ],
    "service/eks" = [
      "aws_eks_",
    ],
    "service/elastic-transcoder" = [
      "aws_elastic_transcoder_",
    ],
    "service/elasticache" = [
      "aws_elasticache_",
    ],
    "service/elasticbeanstalk" = [
      "aws_elastic_beanstalk_",
    ],
    "service/elasticsearch" = [
      "aws_elasticsearch_",
    ],
    "service/elb" = [
      "aws_app_cookie_stickiness_policy",
      "aws_elb",
      "aws_lb_cookie_stickiness_policy",
      "aws_lb_ssl_negotiation_policy",
      "aws_load_balancer_",
      "aws_proxy_protocol_policy",
    ],
    "service/elbv2" = [
      "aws_(a)?lb(\"|`|$)",
      # Catch aws_lb_XXX but not aws_lb_cookie_ or aws_lb_ssl_ (Classic ELB)
      "aws_(a)?lb_([^c]|c[^o]|co[^o]|coo[^k]|cook[^i]|cooki[^e]|cookie[^_]|[^s]|s[^s]|ss[^l]|ssl[^_])",
    ],
    "service/emr" = [
      "aws_emr_",
    ],
    "service/firehose" = [
      "aws_kinesis_firehose_",
    ],
    "service/fms" = [
      "aws_fms_",
    ],
    "service/fsx" = [
      "aws_fsx_",
    ],
    "service/gamelift" = [
      "aws_gamelift_",
    ],
    "service/glacier" = [
      "aws_glacier_",
    ],
    "service/globalaccelerator" = [
      "aws_globalaccelerator_",
    ],
    "service/glue" = [
      "aws_glue_",
    ],
    "service/greengrass" = [
      "aws_greengrass_",
    ],
    "service/guardduty" = [
      "aws_guardduty_",
    ],
    "service/iam" = [
      "aws_iam_",
    ],
    "service/inspector" = [
      "aws_inspector_",
    ],
    "service/iot" = [
      "aws_iot_",
    ],
    "service/kinesis" = [
      # Catch aws_kinesis_XXX but not aws_kinesis_firehose_
      "aws_kinesis_([^f]|f[^i]|fi[^r]|fir[^e]|fire[^h]|fireh[^o]|fireho[^s]|firehos[^e]|firehose[^_])",
    ],
    "service/kinesisanalytics" = [
      "aws_kinesisanalytics_",
    ],
    "service/kms" = [
      "aws_kms_",
    ],
    "service/lambda" = [
      "aws_lambda_",
    ],
    "service/lexmodelbuildingservice" = [
      "aws_lex_",
    ],
    "service/licensemanager" = [
      "aws_licensemanager_",
    ],
    "service/lightsail" = [
      "aws_lightsail_",
    ],
    "service/machinelearning" = [
      "aws_machinelearning_",
    ],
    "service/macie" = [
      "aws_macie_",
    ],
    "service/mediaconnect" = [
      "aws_media_connect_",
    ],
    "service/mediaconvert" = [
      "aws_media_convert_",
    ],
    "service/medialive" = [
      "aws_media_live_",
    ],
    "service/mediapackage" = [
      "aws_media_package_",
    ],
    "service/mediastore" = [
      "aws_media_store_",
    ],
    "service/mediatailor" = [
      "aws_media_tailor_",
    ],
    "service/mobile" = [
      "aws_mobile_",
    ],
    "service/msk" = [
      "aws_msk_",
    ],
    "service/mq" = [
      "aws_mq_",
    ],
    "service/neptune" = [
      "aws_neptune_",
    ],
    "service/opsworks" = [
      "aws_opsworks_",
    ],
    "service/organizations" = [
      "aws_organizations_",
    ],
    "service/pinpoint" = [
      "aws_pinpoint_",
    ],
    "service/polly" = [
      "aws_polly_",
    ],
    "service/pricing" = [
      "aws_pricing_",
    ],
    "service/ram" = [
      "aws_ram_",
    ],
    "service/rds" = [
      "aws_db_",
      "aws_rds_",
    ],
    "service/redshift" = [
      "aws_redshift_",
    ],
    "service/resourcegroups" = [
      "aws_resourcegroups_",
    ],
    "service/robomaker" = [
      "aws_robomaker_",
    ],
    "service/route53" = [
      # Catch aws_route53_XXX but not aws_route53_domains_ or aws_route53_resolver_
      "aws_route53_([^d]|d[^o]|do[^m]|dom[^a]|doma[^i]|domai[^n]|domain[^s]|domains[^_]|[^r]|r[^e]|re[^s]|res[^o]|reso[^l]|resol[^v]|resolv[^e]|resolve[^r]|resolver[^_])",
    ],
    "service/route53domains" = [
      "aws_route53_domains_",
    ],
    "service/route53resolver" = [
      "aws_route53_resolver_",
    ],
    "service/s3" = [
      "aws_canonical_user_id",
      "aws_s3_bucket_",
    ],
    "service/s3control" = [
      "aws_s3_account_",
    ],
    "service/sagemaker" = [
      "aws_sagemaker_",
    ],
    "service/secretsmanager" = [
      "aws_secretsmanager_",
    ],
    "service/securityhub" = [
      "aws_securityhub_",
    ],
    "service/servicecatalog" = [
      "aws_servicecatalog_",
    ],
    "service/servicediscovery" = [
      "aws_service_discovery_",
    ],
    "service/servicequotas" = [
      "aws_servicequotas_",
    ],
    "service/ses" = [
      "aws_ses_",
    ],
    "service/sfn" = [
      "aws_sfn_",
    ],
    "service/shield" = [
      "aws_shield_",
    ],
    "service/simpledb" = [
      "aws_simpledb_",
    ],
    "service/snowball" = [
      "aws_snowball_",
    ],
    "service/sns" = [
      "aws_sns_",
    ],
    "service/sqs" = [
      "aws_sqs_",
    ],
    "service/ssm" = [
      "aws_ssm_",
    ],
    "service/storagegateway" = [
      "aws_storagegateway_",
    ],
    "service/sts" = [
      "aws_caller_identity",
    ],
    "service/swf" = [
      "aws_swf_",
    ],
    "service/transfer" = [
      "aws_transfer_",
    ],
    "service/waf" = [
      "aws_waf_",
      "aws_wafregional_",
    ],
    "service/workdocs" = [
      "aws_workdocs_",
    ],
    "service/workmail" = [
      "aws_workmail_",
    ],
    "service/workspaces" = [
      "aws_workspaces_",
    ],
    "service/xray" = [
      "aws_xray_",
    ],
  }
}

behavior "assign_random_reviewer" "paddy" {
  reviewers            = ["paddycarver", "paddyforan", "ptyng"]
  only_non_maintainers = true
}
