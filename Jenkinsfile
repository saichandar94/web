pipeline {
 agent any
 
 stages {
 
 
 stage(‘Provi’) {
 
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
