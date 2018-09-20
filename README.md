# alpine-lein-maven [ ![Build Status](http://ci.interware.mx:8080/jenkins/buildStatus/icon?job=alpine-lein-maven/master)](https://ci.interware.mx/jenkins/blue/organizations/jenkins/alpine-lein-mave/activity) [ ![](https://img.shields.io/badge/dockerhub-1.1-blue.svg?longCache=true&style=popout)](https://hub.docker.com/r/interwaremx/alpine-lein-maven/)
Minimal Java 8/Leiningen/Maven Docker Image built on Alpine Linux

### Alpine version
```
$ docker container run --rm interwaremx/alpine-lein-maven:latest cat /etc/alpine-release
3.8.0
```

### Java version
```
$ docker container run --rm interwaremx/alpine-lein-maven:latest java -version
java version "1.8.0_181"
Java(TM) SE Runtime Environment (build 1.8.0_181-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.181-b13, mixed mode)
```

### Leiningen version
```
$ docker container run --rm interwaremx/alpine-lein-maven:latest lein version
Leiningen 2.8.1 on Java 1.8.0_181 Java HotSpot(TM) 64-Bit Server VM
```

### Maven version
```
$ docker container run --rm interwaremx/alpine-lein-maven:latest mvn -v
Apache Maven 3.5.3 (3383c37e1f9e9b3bc3df5050c29c8aff9f295297; 2018-02-24T19:49:05Z)
Maven home: /usr/lib/mvn
Java version: 1.8.0_181, vendor: Oracle Corporation
Java home: /usr/lib/jvm/java-8-oracle/jre
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "4.9.93-linuxkit-aufs", arch: "amd64", family: "unix"
```
