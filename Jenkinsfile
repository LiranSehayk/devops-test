node {


    stage('Build') {
        try {
            checkout scm
            echo "This is my scripted Pipeline"
            echo "This is the build number: ${BUILD_NUMBER}"

            echo "Deploying ${BUILD_NUMBER} to a new Docker Image"
            withEnv(['REGISTRY=liransehayk/my-nginx']) {
                docker.withRegistry("",'dockerhub-liransehayk') {
                def customImage = docker.build("${REGISTRY}:${BUILD_NUMBER}", ".")
                customImage.push()
                }
            }
        } catch (e) {
            echo "${e}"
            echo "Build failed"
        } finally {
            cleanWs()
        }
        
    }
}
