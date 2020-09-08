# Hello World

## Web Api
First I coded a web api with Python using Flask and uploaded it into github repo.
Application runs on localhost:8080 port and has 2 URLs. 
    - Default root URL returns a "Hello".
    - '/heathz' returns the status, version and uptime of api. 

[Here my script of web api](https://github.com/aykseldi/Docker_Study/blob/master/helloworld.py)

## What can be added on an API endpoint?
In an API, developer can expose only objects or actions that is needed. 
If we are tracking application status, we may also database status, server loads, average connection requests, last api request ip etc. 
It totaly depends on what kind of information you want to show.

## Dockerization of the Application
* First I created a docker file. [Here my Docker File](https://github.com/aykseldi/Docker_Study/blob/master/dockerfile)

I used Ubuntu 16.04 as base image to run my application.
In the Docker file, first I instructed to run update and then install python development environment. Also for python installed needed libraries. After preparing docker file, below commands build the container and created on the host. 

```shell
docker build -t hello .
docker run -d -p 8080:8080 hello
```
Docker will welcome the request from outside with 8080 and forward them into same port for the container.

Below command shows the status of my container.

```shell
docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
d12016fb42ce        hello               "python helloworld.py"   2 hours ago         Up 2 hours          0.0.0.0:8080->8080/tcp   boring_chaplygin
```

  ## CICD

  For a bracnhing strategy, Github Flow. C
  Here are CICD tools we can use. 
  * Jenkins
  * Microsoft VSTS (TFS)
  * Gitlab

  

There are three steps to set up a basic deployment pipeline. 

### Setting Up a Build Server

A build serveris needed for CI. This server will have a link to source code of the application. Also we need some command to trigger  build operation after code is loaded into server.

### Setting Test Suites

We can create unit tests,integration tests and functional tests. Then we can link the builds to one another so that each is triggered by the one before it. It is better to run fastest, such as unit tests. Then if the code passes, we can run to the next suite. In this way, we can see very quickly if there's a problem, rather than waiting for slower functional tests to fail.

### Adding a Deployment Step

On CI server, we can add a build that will run a script to deploy  application to a testing or staging environment. We should link it to  test builds so that it only runs if all the tests pass. If our deployment process doesn't cause too much downtime, we can make this step run automatically so that your testing environment is always up to date.

