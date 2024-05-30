# Dockerfile

# Base image
FROM python:3.9

# Set the working directory
WORKDIR /code

# Copy the requirements file into the container
COPY ./requirements.txt /code/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy the FastAPI app into the container
COPY ./app /code/app

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app"]