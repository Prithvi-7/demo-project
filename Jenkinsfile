pipeline
{
  agent any
    stages{
      stage('docker build')
      {
        steps{
          sh 'docker build -t jenkins-demo .'
        }
      }
      stage('check')
      {
        steps{
          sh 'pwd'
          sh 'ls -la'
        }
      }
    }
}
        
