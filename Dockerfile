FROM python:3.9.7-slim
COPY .  /app
WORKDIR /app 

RUN python3 -m venv /opt/env 
RUN /opt/env/bin/pip install pip --upgrade && \
    /opt/env/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

CMD [ "/app/entrypoint.sh" ]

