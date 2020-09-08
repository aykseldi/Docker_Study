FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install flask
RUN pip install requests

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "helloworld.py" ]

