# Hello World

Using your favorite language (Go, Python, Java, Scala, Bash, etc.), create a hello world web application API
that listens on port 8080 and greets a user with `Hello!` and exposes a health status endpoint.

First I coded a web api with Python with Flask module and uploaded it into github repo.
Application runs om localhost:8080 port and has 2 URLs. 
    - Default root URL returns a "Hello".
    - '/heathz' returns the status, version and uptime of api. 
[Here my script] (https://github.com/aykseldi/Docker_Study/blob/master/helloworld.py)

3. What other information would you add to health endpoint json object in step 2? Explain what would be the use case
for that extra information?
In an API, developer can expose only objects or actions that is needed. If we are tracking application status, we may also database status, server loads, 
4. Create a docker file to build, package, deploy, and run this application locally with Docker.    
5. How would you automate the build/test/deploy process for this application? (a verbal answer is enough. installation of CICD is bonus, not required)
   - What branching strategy would you use for development?
   - What CICD tool/service would you use?
   - What stages would you have in the CICD pipeline?
   - What would be the purpose of each stage in CICD pipeline
  


6. Your solution should include a README explaining how to build and run the application with Docker. We will follow the steps you provide in readme file and execute it to verify.

NOTE: Please submit github repository url for your solution.