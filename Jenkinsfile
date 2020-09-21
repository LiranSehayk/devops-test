node {

    stage('Build') {
        echo "This is my scripted Pipeline"
        echo "This is the build number: ${BUILD_NUMBER}"
        
        withCredentials([usernamePassword(credentialsId: 'dockerhub-liransehayk', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            bat 'echo "This is the USERNAME: $USERNAME"'
        }
        
        def buildRegistry = [ url: 'https://hub.docker.com/', credentialsId: 'dockerhub-liransehayk' ]
            withDockerRegistry(registry: buildRegistry ) 
            {
                sh "docker build -t liransehayk/my-nginx:${BUILD_NUMBER}"
                sh "docker push liransehayk/my-nginx:${BUILD_NUMBER}"
            }
    }
}

