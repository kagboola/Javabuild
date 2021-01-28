node('master') {
	stage ('checkout code'){
		checkout scm
	}
	stage ('Build'){
		def mvnHome = tool name: 'maven3', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
		
	}
	

	stage ('Archive Artifacts'){
		archiveArtifacts artifacts: 'target/*.war'
	}
	
	stage ('Deployment'){
		//sh 'cp target/*.war /opt/tomcat8/webapps'
	}
	stage ('Notification'){
				emailext (
		      subject: "Job Completed",
		      body: "Jenkins Pipeline Job for Java Build got completed !!!",
		      to: "agboolab92@gmail.com"
		    )
	}
}
