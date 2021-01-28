node('master') {
	stage ('checkout code'){
		checkout scm
	}
	stage ('Build'){
		def mvnHome = tool name: 'maven3', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
		sh "mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Pcoverage-per-test"
	}

	stage ('Sonar Analysis'){
		sh 'mvn sonar:sonar -Dsonar.host.url=http://52.90.114.217:9000 -Dsonar.login=3f2d512066c968a048575e6a0001e6bcffe61601'
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
