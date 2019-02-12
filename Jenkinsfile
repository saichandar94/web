pipeline {
 agent any
 parameters{
     string description: 'az_count', name: 'az_count'
      choice(
         name: 'terra_tf',
         choices: 'apply\ndestroy',
         description: 'terra_tf'
         )
 }
stages {
    stage('Initialize') {
      steps {
       echo ("git cloning")
       git branch: 'master',
       url: 'https://github.com/kishorepamulapati/vpc-setup.git'
       sh 'ls -l'
       sh "terraform init"
      }
    }
    stage('TF Plan'){
        steps{
           sh "terraform plan -var-file=var.tfvars -var az_count=${params.az_count}"
           input message: 'Ready to apply?', ok: 'yes'
        }
    }
  stage('TF Action'){
        steps{
           sh "terraform ${params.terra_tf} -var-file=var.tfvars -var az_count=${params.az_count} -auto-approve"
        }
    }
 }
}
