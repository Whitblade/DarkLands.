FROM python:3.8-slim

WORKDIR /app

RUN pip install --no-cache-dir jupyterlab

EXPOSE 8888

ENV PORT 8888

# Shell form to expand $PORT
CMD jupyter lab --ip=0.0.0.0 --port=$PORT --no-browser --allow-root
