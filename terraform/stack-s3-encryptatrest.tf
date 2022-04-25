resource "aws_cloudformation_stack" "stack-test" {
    name            = "Stack-Test"
    template_body   = "${file("${path.module}/templates/s3encryptatrest.yml")}"
    capabilities    = ["CAPABILITY_NAMED_IAM"]
    # iam_role_arn    = "arn:aws:iam::107887637814:role/prod-dpe-stackdeploy-role"
}