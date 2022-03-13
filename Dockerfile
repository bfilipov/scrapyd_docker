FROM python:3.10.2-buster

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt-get update 

RUN apt-get install build-essential

RUN apt-get install manpages-dev -y

RUN apt-get install libpq-dev -y

RUN pip install --upgrade pip

RUN python3 -m pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["scrapyd"]
