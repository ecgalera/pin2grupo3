Generamos un Backend externo en aws para lo cual utilizamos: 
    - S3: creamos un bucket con el nombre: ecg-terraform-backend
    - Dynamodb: creamos tabla con el nombre de: terraformstatelock y un clave de partición: LockID

  - codigo incluido en el archivo backend.tf :

  terraform {
  backend "s3" {
    bucket = "ecg-terraform-backend"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_locks"
    encrypt = true
  }
}
