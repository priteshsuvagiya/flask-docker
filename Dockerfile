FROM python:3.8.7
ADD . /code
WORKDIR /code
RUN python3 -m pip install -r requirements.txt
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
