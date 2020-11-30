# test-car-about
Test task for CarAbout

## Prerequisites
Docker Engine is expected to be installed and configured beforehand.

## Build
First build this Docker image with the following command:
`docker build -t testask .`

## Run
After that, you can run the container passing one of the following commands:

### version
`docker run -t --rm testask --version`

### URL
`docker run -t testask <URL>`
