FROM python:3.6-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PROJECT_ROOT /code

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install 'pipenv==2018.11.26'
COPY Pipfile Pipfile.lock /code/
RUN pipenv install --system
COPY . .
CMD python manage.py runserver 0.0.0.0:8000

# Copy project

