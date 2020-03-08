### Dockerized Boinc Runner

##### 1) Build the docker image. This is optional, since you can reuse my dockerhub image.

    docker build -t filodreamz/boinc .

##### 2) Create an account for your project

Create an account for the BOINC project you want to help. All you need is the project URL and your key. In my case (rosetta@home), these can be found here https://boinc.bakerlab.org/rosetta/weak_auth.php.

##### 3) Run

    docker run -ti -e "boincurl={project_url}" -e "boinckey={your_key}" filodreamz/boinc

...or set the env variables in docker-compose.yml and

    docker-compose up -d