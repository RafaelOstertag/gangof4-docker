pipeline {
    agent {
        label "docker"
    }

    options {
        ansiColor('xterm')
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')
        timestamps()
    }

    parameters {
        string defaultValue: '', description: 'Version to build', name: 'VERSION', trim: true
    }

    stages {
        stage("Build docker image") {
            when {
                expression {
                    return params.VERSION != ""
                }
            }
            steps {
                sh "./build.sh ${params.VERSION}"
            }
        }
    }
}
