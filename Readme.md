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
In the Docker file, first I instructed to run update and then install python development environment. Also for python installed needed libraries. 

```shell
docker build -t hello .
docker run -d -p 8080:8080 hello
```
Docker will welcome the request from outside with 8080 and forward them into same port for the container.


5. How would you automate the build/test/deploy process for this application? (a verbal answer is enough. installation of CICD is bonus, not required)
   - What branching strategy would you use for development?
   - What CICD tool/service would you use?
   - What stages would you have in the CICD pipeline?
   - What would be the purpose of each stage in CICD pipeline
  


6. Your solution should include a README explaining how to build and run the application with Docker. We will follow the steps you provide in readme file and execute it to verify.

NOTE: Please submit github repository url for your solution.