pipeline {
 agent any
stages {
    stage('Initialize') {
      steps {
       echo ("git cloning")
       git branch: 'master',
       url: 'https://github.com/saichandar94/web.git'
       sh 'ls -l'
       sh "terraform init"
      }
    }
   /* stage('TF Plan'){
        steps{
           sh "terraform plan -var-file=var.tfvars -var az_count=${params.az_count}"
           input message: 'Ready to apply?', ok: 'yes'
        }
    }*/
 stage('TF apply'){
        steps{
           sh "terraform apply"
           input message: 'Ready to apply?', ok: 'yes'
        }
 }
 
 }
}
