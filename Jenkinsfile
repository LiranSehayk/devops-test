node {

    stage('Build') {
        echo "This is my scripted Pipeline"
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'dockerhub-liransehayk',
            usernameVariable: 'DOCKER-USERNAME', passwordVariable: 'DOCKER-PASSWORD']
        ])
        echo "This is the USERNAME: $DOCKER-USERNAME"
        echo "This is the build number: $BUILD_NUMBER"
        
        def buildRegistry = [ url: 'https://hub.docker.com/', credentialsId: 'dockerhub-liransehayk' ]
            withDockerRegistry(registry: buildRegistry ) 
            {
                sh "docker build -t liransehayk/my-nginx:${BUILD_NUMBER}"
                sh "docker push liransehayk/my-nginx:${BUILD_NUMBER}"
            }
    }
}

