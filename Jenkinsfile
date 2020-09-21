node {

    stage('Build') {
        try {
            checkout scm
            echo "This is my scripted Pipeline"
            echo "This is the build number: ${BUILD_NUMBER}"

            echo "Deploying ${BUILD_NUMBER} to a new Docker Image"
            docker.withRegistry("",'dockerhub-liransehayk') {
            def customImage = docker.build("liransehayk/my-nginx:${BUILD_NUMBER}", ".")
            customImage.push()
            }
            
            withCredentials([usernamePassword(credentialsId: 'dockerhub-liransehayk', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                echo 'cf login some.awesome.url -u ${USERNAME} -p $PASSWORD'
            }
        } catch (e) {
            echo "Build failed"
        } finally {
            cleanWs()
        }
        
    }

}
