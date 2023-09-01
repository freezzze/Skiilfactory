## Мой первый вариант (писал во время обучения)
# FROM alpine
# RUN mkdir -p /scripts
# ADD get_favicon.sh /scripts
# WORKDIR /scripts
# RUN apk update && apk add bash
# RUN chmod +x get_favicon.sh
# RUN ./get_favicon.sh devopscube.com

## Оптимизированная версия
# Используется COPY вместо ADD (т.к. возмозможности ADD избыточны для этой задачи).
# Убрана комманда "mkdir -p /scripts", т.к. инструкция WORKDIR создаёт директорию и делаёт её активной
# Объединены несколько инструкций RUN
# При запуске контейнера команда выполняется с помощью CMD, т.к. инструкция RUN выполняется
# на этапе сборки образа (CMD может быть переопределена на этапе запуска контейнера, например можно указать другой сайт)
FROM alpine
WORKDIR /scripts
COPY get_favicon.sh /scripts
RUN apk update && \
    apk add bash && \
    chmod +x get_favicon.sh
CMD ["./get_favicon.sh", "devopscube.com"]