node {

    stage('Build') {
        echo "This is my scripted Pipeline"
        echo "This is the build number: ${BUILD_NUMBER}"

        bat "docker build -t liransehayk/my-nginx:${BUILD_NUMBER} ."
        bat "docker push liransehayk/my-nginx:${BUILD_NUMBER}"

    }
}

