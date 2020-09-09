FROM ubuntu:16.04


ENV DOCKERVERSION=18.06.2-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${docker-18.06.2-ce}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${docker-18.06.2-ce}.tgz

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install flask
RUN pip install requests

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "helloworld.py" ]

