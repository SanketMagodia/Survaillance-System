FROM python:3.7-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN apt update
RUN apt install python3 -y
RUN apt install python3 -pip

RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD ["app.py" ]
EXPOSE 5005