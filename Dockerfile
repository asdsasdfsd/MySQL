FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=potm
ENV MYSQL_PORT=3306

EXPOSE ${MYSQL_PORT}

COPY ./init.sql /docker-entrypoint-initdb.d/