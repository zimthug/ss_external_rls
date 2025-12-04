FROM apache/superset:5.0.0-dev

USER root

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libffi-dev python3-dev cargo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# USER superset

RUN uv pip install --no-cache-dir psycopg2-binary Flask-Cors

USER superset

COPY superset/superset_config.py /app/pythonpath/superset_config.py

COPY ./data/superset/dashboard_export.zip /tmp/dashboard_export.zip

COPY scripts/entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
