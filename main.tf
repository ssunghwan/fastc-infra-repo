module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0b3d4ff8f19197ccf"

  private_subnets = ["subnet-04668d3a2c199703f", "subnet-082f867f4e63b58bc"]
  public_subnets  = ["subnet-0d3b38ffa60fdb54b", "subnet-060247293a6188484"]
}