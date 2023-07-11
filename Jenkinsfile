 pipeline {
    agent any
    environment {
        LC_ALL = 'en_US.UTF-8'
    }
    stages {
        stage('Bundle') {
            steps {
                sh 'gem install bundler:2.4.10 --user-install'
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
 