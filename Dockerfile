FROM python:3.8.7
ADD . /code
WORKDIR /code
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD [ "app.py" ]
