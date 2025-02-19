FROM python:3.9.7-slim
COPY .  /app
WORKDIR /app 

RUN apt update && apt install -y bash

RUN python3 -m venv /opt/env 
RUN /opt/env/bin/pip install pip --upgrade && \
    /opt/env/bin/pip install -r requirements.txt 

RUN chmod +x /app/entrypoint.sh


CMD [ "bash", "/app/entrypoint.sh" ]

