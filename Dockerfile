# Используем официальный образ PostgreSQL
FROM postgres:16.

# Устанавливаем рабочую директорию в контейнере
WORKDIR /docker-entrypoint-initdb.d

# Копируем скрипт инициализации в контейнер
COPY init-scripts/init.sql /docker-entrypoint-initdb.d/

# Устанавливаем переменные окружения для конфигурации PostgreSQL
ARG POSTGRES_DB
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_PORT

ENV POSTGRES_PORT ${POSTGRES_PORT}
ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
