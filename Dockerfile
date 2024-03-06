FROM python:3.11.2-slim
LABEL authors="Igor Lytkin"

ENV PYTHONUNBUFFERED 1          # to prevent buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE 1   # to prevent python from writing bytecode

WORKDIR /FsmBot
COPY requirements.txt .
RUN pip install -r --upgade setuptools
RUN pip install --no-cache-dir -r ./requirements.txt
RUN chmod 755 .

COPY fsm_bot ./fsm_bot

CMD ["python", "-m", "fsm_bot"]