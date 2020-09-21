node {

    stage('Build') {
        checkout scm
        echo "This is my scripted Pipeline"
        echo "This is the build number: ${BUILD_NUMBER}"

        echo "Deploying ${BUILD_NUMBER} to a new Docker Image"
        docker.withRegistry("",'dockerhub-liransehayk') {
        def customImage = docker.build("liransehayk/my-nginx", ".")
        customImage.push()
        }
    }
}

