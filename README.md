# ascent-devops
This is Joe Wright's DevOps exercise for Ascent. Thank you for giving me the opportunity to work through this exercise!

# The End
Let's start at the end: the Terraform code has been used to build an ECS cluster which can be reached at: 
[http://ascent-demo-alb-1963194294.us-east-1.elb.amazonaws.com](http://ascent-demo-alb-1963194294.us-east-1.elb.amazonaws.com)

That's a lot to type, so let's make it easier with a CNAME: [http://ascent-demo.joewright.org](http://ascent-demo.joewright.org)

# Code layout
The [repository root](https://github.com/the-real-joe-wright/ascent-devops) contains the Dockerized version of the application code (Steps 1-2 of the exercise).  

The ECS cluster is built from the [terraform-setup/](https://github.com/the-real-joe-wright/ascent-devops/tree/master/terraform-setup) directory (Step 4).

The build pipeline is in [.circleci/](https://github.com/the-real-joe-wright/ascent-devops/tree/master/.circleci) (Step 5).

# How it works: the short version
I created an ECR repository named ascent-demo, then built and pushed the application Docker image to it.

Next, I built an ECS cluster which uses the ascent-demo:latest image to run Tasks in the Service named ascent-demo-service.

After that was working, I updated .circleci/config.yml to build and push new images to ECR, then restart ECS.

# Sources
This repo did not spring full-blown from my forehead (since I'm not DevOps Zeus).  The Terraform code has its roots in [this article](https://thecode.pub/easy-deploy-your-docker-applications-to-aws-using-ecs-and-fargate-a988a1cc842f) and [its repo](https://github.com/duduribeiro/terraform_ecs_fargate_example), with influences from several other articles (besides the AWS documentation, of course).

Rather than reinvent the wheel, I adapted the CircleCI build and push mechanism from CircleCI's article [Deploying to AWS ECR/ECS](https://circleci.com/docs/2.0/ecs-ecr/#build-and-push-the-docker-image-to-aws-ecr).
