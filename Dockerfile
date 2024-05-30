# Dockerfile

# Base image
FROM python:3.10

# Set the working directory
WORKDIR /code

EXPOSE 8000

# Copy the FastAPI app into the container
COPY . /code

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app", "--port", "8000"]