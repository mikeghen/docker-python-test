FROM ubuntu:latest
MAINTAINER Michael Ghen "mghen@bdtrust.org"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
WORKDIR /opt/app
COPY templates /opt/app/templates
COPY server.py /opt/app/server.py
COPY entrypoint.sh /opt/app/entrypoint.sh
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["/opt/app/entrypoint.sh"]
