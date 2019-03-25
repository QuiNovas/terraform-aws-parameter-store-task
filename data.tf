data "aws_iam_policy_document" "parameter_store_task" {
  statement {
    actions = [
      "ssm:PutParameter",
      "ssm:GetParameters",
      "ssm:GetParameter",
      "ssm:GetParametersByPath",
      "ssm:GetParameterHistory",
    ]

    resources = [
      "*",
    ]

    sid = "ReadAndWriteParameters"
  }

  statement {
    actions = [
      "kms:Decrypt",
      "kms:Encrypt",
      "kms:GenerateDataKey*",
    ]

    resources = [
      "${var.ssm_kms_key_arn}",
    ]

    sid = "EcryptDecryptSecureStringParameters"
  }
}
