FROM python:3.8
LABEL maintainer="Tyler Gibbs <gibbstyler7@gmail.com>"

ENV IS_DOCKER 1

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app

CMD [ "python", "main.py" ]