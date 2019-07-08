output "repository_url" {
  value = "${data.aws_ecr_repository.demo-repo.repository_url}"
}

output "cluster_name" {
  value = "${aws_ecs_cluster.cluster.name}"
}

output "service_name" {
  value = "${aws_ecs_service.ascent-demo.name}"
}

output "alb_dns_name" {
  value = "${aws_alb.alb_ascent-demo.dns_name}"
}

output "alb_zone_id" {
  value = "${aws_alb.alb_ascent-demo.zone_id}"
}

output "security_group_id" {
  value = "${aws_security_group.ecs_service.id}"
}
