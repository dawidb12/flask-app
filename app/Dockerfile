FROM python:3.8.15-buster
COPY . /app
WORKDIR /app
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN apt install default-libmysqlclient-dev
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]