node('master') {
	stage ('checkout code'){
		checkout scm
	}
	stage ('Build'){
		def mvnHome = tool name: 'maven3', type: 'maven'
		sh "${mvnHome}/bin/mvn -B -s settings.xml clean deploy"		
	}
	

	stage ('Archive Artifacts'){
		archiveArtifacts artifacts: 'target/*.war'
	}
	
	stage ('Deployment'){
		//sh 'cp target/*.war /opt/tomcat8/webapps'
	}
	stage ('Deploy to kubernetes'){
		steps{
		      script {
				kubernetesDeploy(configs: "nginx.yaml", kubeconfigId: "mykubeconfig")
		             }
			       }
		       }
	stage ('Notification'){
				emailext (
		      subject: "Job Completed",
		      body: "Jenkins Pipeline Job for Java Build got completed !!!",
		      to: "agboolab92@gmail.com"
		    )
	}
}
