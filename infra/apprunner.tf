resource "aws_apprunner_service" "service" {
  service_name = var.student_name
  source_configuration {

    authentication_configuration {
      access_role_arn = "arn:aws:iam::244530008913:role/service-role/AppRunnerECRAccessRole"
    }

    image_repository {
      image_configuration {
        port = "8080"
      }
      image_identifier      = "244530008913.dkr.ecr.eu-west-1.amazonaws.com/jens-test:latest"
      image_repository_type = "ECR"
    }
    auto_deployments_enabled = true
  }
}
