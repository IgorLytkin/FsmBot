FROM python:3.11.2-slim
LABEL authors="Igor Lytkin"

ENV PYTHONUNBUFFERED 1          # to prevent buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE 1   # to prevent python from writing bytecode

WORKDIR FsmBot
COPY requirements.txt .
RUN pip install --no-cache-dir -r ./requirements.txt

COPY fsm_bot ./fsm_bot

CMD ["python", "-m", "fsm_bot"]