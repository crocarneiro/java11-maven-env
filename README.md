# java11-maven-env
This is a  Dockerfile used to build a [Docker](https://www.docker.com/) image derived from Ubuntu:18.04 with [Open JDK 11](https://openjdk.java.net/projects/jdk/11/) and [Maven](https://maven.apache.org/) installed.

## Usage

You can download it and build the image by yourself or just pull the image from [DockerHUB](https://hub.docker.com/) and run it.

### Building the image by yourself

Download or clone this repository, then open the command prompt or the terminal (if you're using linux) and run:
```shell
docker build . -t java11-maven-env
```

### Building and running your java 11 Maven application
From prompt or terminal, in your application root directory (pom.xml should be here) follow the steps below:

#### Create container
Windows:
```shell
docker run -d -i --name my-java11-container --mount type=bind,source="%cd%",target=/source crocarneiro1998/java11-maven-env

# If you have build the image by yourself use this command below instead
docker run -d -i --name my-java11-container --mount type=bind,source="%cd%",target=/source java11-maven-env
```

Linux:
```shell
docker run -d -i --name my-java11-container --mount type=bind,source="(pwd)",target=/source crocarneiro1998/java11-maven-env

# If you have build the image by yourself use this command below instead
docker run -d -i --name my-java11-container --mount type=bind,source="(pwd)",target=/source java11-maven-env
```

#### Then open the bash
```
docker exec -i -t my-java11-container /bin/bash
```

#### Then just build your application with Maven
```
mvn package
```

#### The run your application
```
java jar target/my_application.jar
```