FROM ubuntu:18.04
COPY . /app
RUN mkdir /app1
CMD python /app/app.py