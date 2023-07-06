FROM postgres:13.4
ENV POSTGRES_USER appuser
ENV POSTGRES_PASSWORD apppass
ENV POSTGRES_DB appdb
COPY init.sql /docker-entrypoint-initdb.d/
