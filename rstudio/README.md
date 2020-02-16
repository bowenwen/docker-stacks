# Docker RStudio

This is a Docker image built for custome analysis and demo on reproducible research.

## Getting started

### Get the image

To get a copy of the Docker image, you can either:

A. pull the latest version of a prebuilt image from DockerHub:

`docker pull bowenwen\rstudio:latest`

B. build your own image using the `Dockerfile` provided:

`docker build -t rstudio_test .`

### Run the image

After you have an image, you can start a Docker container with two methods:

A. using the docker run command

`docker run --rm --name temp_rstudio --env PASSWORD=test -p 8787:8787 bowenwen\rstudio:latest`

Note you can add `--volume $pwd:/home/rstudio` to the docker run command to link a folder between your host OS and the docker container.

B. using the docker-compose file, note you might need to change a few settings to have this work properly for you.

`docker-compose up`

