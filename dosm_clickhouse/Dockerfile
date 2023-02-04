FROM python:3.10

WORKDIR /usr/app

COPY ./requirements.txt /usr/app/requirements.txt
RUN pip install -r requirements.txt

COPY . /usr/app

RUN dbt deps --project-dir .
