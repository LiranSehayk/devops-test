node {

    stage('Build') {
        echo "This is my scripted Pipeline"
        docker.withRegistry('https://hub.docker.com/', 'dockerhub-liransehayk') {
          docker.build('my-nginx').push(${BUILD_NUMBER})
        }
    }
}
