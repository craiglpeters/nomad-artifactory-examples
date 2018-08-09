job "gogetter" {
  datacenters = ["dc1"]
  type = "batch"
  group "example-from-artifactory" {
	# This task invokes go-getter directly to pull an artifact
	task "directgogetter" {
  	driver = "raw_exec"
 
  	config {
    	# When running a binary that exists on the host, the path must be absolute path
    	command = "/tmp/go-getter"
 	   args    = ["http://admin:AKCp5bBD1fYq9WGUG4YLbotvAqgcYhGTTniAcsMSv1zDQYpJ12zw18tZ61bJhYKDqC5XoMgxD@https://partner1.jfrog.team/artifactory/artifactory/libs-release/5.1.4/connector-java-5.1.4-bin.jar", "/tmp/artifacts/"]
  	}
    }
  }
}
