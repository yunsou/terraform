resource "aws_elasticache_parameter_group" "elasticache_parameter_group" {
  name   = "redis-params"
  family = "redis3.2"

  parameter {
    name  = "activerehashing"
    value = "yes"
  }

  parameter {
    name  = "min-slaves-to-write"
    value = "2"
  }
}
