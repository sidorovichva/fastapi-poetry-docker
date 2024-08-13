FROM python:3.12-slim-bullseye

WORKDIR /app

RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="/root/.local/bin:$PATH"

COPY . /app

RUN poetry install --no-dev

EXPOSE 8098

CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8098"]