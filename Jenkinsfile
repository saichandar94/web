pipeline {
 agent any
 
 stages {
 
 
 stage(‘Provision infrastructure’) {
 
 steps {
 dir(‘/’)
 {
 sh ‘terraform init’
 sh ‘terraform plan -out=plan’
 // sh ‘terraform destroy -auto-approve’
 sh ‘terraform apply plan’
 }
 }
 } 
 }
}
