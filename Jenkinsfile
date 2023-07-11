 pipeline {
    agent any
    environment {
        LC_ALL = 'en_US.UTF-8'
    }
    stages {
        stage('Bundle') {
            steps {
                sh 'bundle update --bundler'
            }
        } 
        stage('RunTest') {
            steps {
                sh '$HOME/.rvm/gems/ruby-2.7.2/wrappers/fastlane run_build_test'
            }
        }
        stage('Slather') {
            steps {
                sh 'slather coverage -s --html --scheme Trial-Ci ./Trial-Ci.xcodeproj'
            }
        }
    }
}
 