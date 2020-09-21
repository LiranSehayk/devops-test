node {

    stage('Build') {
        checkout scm
        echo "This is my scripted Pipeline"
        echo "This is the build number: ${BUILD_NUMBER}"

        bat "dir"
        bat "docker build -t liransehayk/my-nginx:${BUILD_NUMBER} ."
        bat "docker push liransehayk/my-nginx:${BUILD_NUMBER}"

    }
}

