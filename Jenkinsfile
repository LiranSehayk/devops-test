node {

    stage('Build') {
        echo "This is my scripted Pipeline"
        
        withCredentials([usernamePassword(credentialsId: 'dockerhub-liransehayk', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            sh 'echo "This is the USERNAME: $USERNAME"'
            sh 'echo "This is the build number: ${BUILD_NUMBER}"'
        }
        
        def buildRegistry = [ url: 'https://hub.docker.com/', credentialsId: 'dockerhub-liransehayk' ]
            withDockerRegistry(registry: buildRegistry ) 
            {
                sh "docker build -t liransehayk/my-nginx:${BUILD_NUMBER}"
                sh "docker push liransehayk/my-nginx:${BUILD_NUMBER}"
            }
    }
}

