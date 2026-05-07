pipeline
{
  agent any
  environment{
    IMAGE_NAME= "prithvirajan123/jenkins-demo"
    stages{
      stage('docker build')
      {
        steps{
          sh 'docker build -t $IMAGE_NAME'
        }
      }
      stage('check')
      {
        steps{
          sh 'pwd'
          sh 'ls -la'
        }
      }
      stage('docker login')
      {
        steps{
          withCredentials([usernamePassword(
            credentialsId: 'docker-hub',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
            )])
          {
            sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
          }
        }
      }
      stage('push docker image'){
      steps{
      sh 'docker push $IMAGE_NAME'
      }
      }
    }
  }
}
        
