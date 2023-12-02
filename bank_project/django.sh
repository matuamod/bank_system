#!/bin/bash
echo "Creating Migrations..."
python3 manage.py makemigrations bank_app
echo ====================================

echo "Starting Migrations..."
python3 manage.py migrate
echo ====================================

echo "Starting Server..."
python3 manage.py runserver 0.0.0.0:8000