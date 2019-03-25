output "arn" {
  description = "The arn of parameter store task Lambda function"
  value       = "${module.parameter_store_task.arn}"
}

output "invoke_policy_arn" {
  description = "The arn of the invocation policy parameter store task Lambda function"
  value       = "${module.parameter_store_task.invoke_policy_arn}"
}