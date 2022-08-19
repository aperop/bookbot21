FROM python:3.9-slim-bullseye

WORKDIR /app/

RUN apt-get -y upgrade
RUN apt-get -y update

COPY . .

RUN python3 -m pip install -U pip

RUN pip3 install -Ur src/requirements.txt

EXPOSE 8081/tcp 8082/tcp

#CMD [ "python", "./src/prototype/kernel/main.py" ]