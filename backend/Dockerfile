FROM python:3.9-slim-buster

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y build-essential libpq-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install poetry \
    && rm -rf /root/.cache/pip

WORKDIR /code
COPY ./backend/pyproject.toml ./backend/poetry.lock ./

RUN poetry config virtualenvs.create false \
    && poetry install --no-root \
    && rm -rf /root/.cache/pypoetry /root/.cache/pip

COPY ./backend/ ./

COPY ./docker/ /docker/
RUN chmod +x /docker/dev-entrypoint.sh /docker/wait-for-it.sh