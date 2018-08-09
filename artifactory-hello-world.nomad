job "artifact-hello-world" {
  datacenters = ["dc1"]
  type = "batch"
# This task invokes go-getter via the artifacts directive
	task "getartifacts" {
  	driver = "raw_exec"
  	config {
    	# When running a binary that exists on the host, the path must be absolute/
    	command = "/usr/bin/touch"
        args    = ["/tmp/ARTIFACT_DOWNLOAD_DONE"]
  	}
	artifact {
  	source  	= "http://ARTIFACTORY_USER:ARTIFACTORY_API@ARTIFACTORY_URL artifactory/libs-release/5.1.4/connector-java-5.1.4-bin.jar"
  	destination = "local/artifacts"
 	 }
	}