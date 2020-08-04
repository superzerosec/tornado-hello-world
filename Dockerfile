# docker build . -t tornado-hello-world
# docker run -v "$PWD":/app -w /app -it -p 8888:8888 --rm tornado-hello-world sh

FROM python:3.7-alpine
ADD . /app
WORKDIR /app
RUN apk update
#RUN pip install -r requirements.txt
RUN pip install tornado
#CMD [ "python3" ]