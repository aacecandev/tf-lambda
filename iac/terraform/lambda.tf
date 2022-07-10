module "lambda_function" {
  source        = "terraform-aws-modules/lambda/aws"
  version       = "3.3.1"
  function_name = "hello-node"
  description   = "Hello world with NodeJS"
  handler       = "index.handler"
  runtime       = "nodejs12.x"

  source_path = "./hello-world/index.js"

  tags = {
    Name = "my-lambda1"
  }
}