FROM jenkins/jnlp-slave:latest AS jnlp
LABEL maintainer="wliao008@gmail.com"
USER root
RUN apt-get update && \
    apt install -y vim && \
    apt install -y wget && \
    apt install -y python-pip && \
    pip install robotframework && \
    pip install robotframework-seleniumlibrary && \
    pip install chromedriver && \
    pip install webdrivermanager && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    apt-get update && apt-get install -y google-chrome-stable && \
    webdrivermanager chrome --linkpath /usr/local/bin