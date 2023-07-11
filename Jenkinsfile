 pipeline {
    agent any
    environment {
        LC_ALL = 'en_US.UTF-8'
    }
    stages {
        stage('Config git') {
            steps {
                git url: 'https://github.com/icungse/Trial-Ci.git', branch: 'main'
            }
        }
        stage('NotifStart') {
            steps {
                sh '$HOME/.rvm/gems/ruby-2.7.2/wrappers/fastlane start_slack'
            }
        }
        stage('RunTest') {
            steps {
                sh '$HOME/.rvm/gems/ruby-2.7.2/wrappers/fastlane run_build_test'
            }
        }
        stage('ReportResult') {
            steps {
                sh '$HOME/.rvm/gems/ruby-2.7.2/wrappers/fastlane xcov_reposrt'
            }
        }
    }
}
 