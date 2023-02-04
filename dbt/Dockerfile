FROM bitnami/jsonnet:0.19.1 AS jsonnet
WORKDIR /usr/app
USER root

COPY . /usr/app

RUN jsonnet models/dosm/sources.jsonnet -S -o models/dosm/sources.yml

FROM python:3.10

WORKDIR /usr/app

COPY ./requirements.txt /usr/app/requirements.txt
RUN pip install -r requirements.txt

COPY --from=jsonnet /usr/app .

RUN dbt deps --project-dir .
