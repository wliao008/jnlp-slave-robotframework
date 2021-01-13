# What Is This

A docker image for running Robot Framework tests from Jenkins.

# Usage

Build the docker container

```
$ docker build -t jnlp-slave-robotframework .
```

Run the container:

```
$ docker run -it --shm-size 2g -v ${PWD}:/robots jnlp-slave-robotframework bash
```

This will put you inside the container with the bash prompt.

Run the tests:
```
root@71f587ae4454: cd /robots
root@71f587ae4454:/robots# robot -d logs --argumentfile=<path-to-arg-file> <path-to-test>
```