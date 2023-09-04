#!/bin/bash
# Обновление пакетов
sudo apt update

# Установка python3* и libpq-dev
sudo apt install -y python3 python3-pip python3-dev libpq-dev

# Установка с помощью pip библиотеки psycopg2, django
python3 -m pip install psycopg2 django

#Создание и копирование пустого файла на vagrant машину
echo "This is an empty file" > empty_file.txt
cp empty_file.txt /home/vagrant/