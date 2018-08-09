job "docker-hello-world" {
  datacenters = ["dc1"]
  type = "batch"
    }
	# This task pulls images via the docker driver
	task "pulldocker" {
  	driver = "docker"
  	config {
    	command = "/bin/echo"
    	args    = ["DONE"]
    	image = "hello-world"
    	auth {
      	    username = "admin"
      	    password = "AWSfargate"
      	    server_address = "https://partner1.jfrog.team/artifactory"
      	}
  	}
  	resources {
    	cpu = 500 # 500 Mhz
    	memory = 512 # 256MB
  	}
	}
  }
}