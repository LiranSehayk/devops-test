node {


    stage('Build') {
        try {
            checkout scm
            echo "This is my scripted Pipeline"
            echo "This is the build number: ${BUILD_NUMBER}"

            echo "Deploying ${BUILD_NUMBER} to a new Docker Image"
            withEnv(['REGISTRY=liransehayk/my-nginx', 'SERVICE_NAME=my-nginx_nginx']) {
                docker.withRegistry("",'dockerhub-liransehayk') {
                def customImage = docker.build("${REGISTRY}:${BUILD_NUMBER}", ".")
                customImage.push()
                
                customImage.push('latest')
                
                bat 'docker service update --image %REGISTRY%:%BUILD_NUMBER% %SERVICE_NAME%'
                }
            }
            echo "Build succeeded"
        } catch (e) {
            echo "${e}"
            echo "Build failed"
        } finally {
            cleanWs()
        }
        
    }
}
