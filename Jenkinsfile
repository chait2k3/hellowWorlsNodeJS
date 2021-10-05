pipeline{
    agent any
    stages{
        stage("Build"){
            steps{
                echo "========executing Build========"
            }
            post{
                always{
                    echo "========always Build ========"
                }
                success{
                    echo "========Build executed successfully========"
                }
                failure{
                    echo "========Build execution failed========"
                }
            }
        }
        stage("Test"){
            steps{
                echo "========executing Test========"
            }
            post{
                always{
                    echo "========always Test ========"
                }
                success{
                    echo "========Test executed successfully========"
                }
                failure{
                    echo "========Test execution failed========"
                }
            }
        }
        stage("Deploy"){
            steps{
                echo "========executing Deploy========"
            }
            post{
                always{
                    echo "========always Deploy ========"
                }
                success{
                    echo "========Deploy executed successfully========"
                }
                failure{
                    echo "========Deploy execution failed========"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
