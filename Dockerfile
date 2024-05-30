# Dockerfile

# Base image
FROM python:3.9

# Set the working directory
WORKDIR /code

# Install dependencies
RUN pip3 install -r requirements.txt

EXPOSE 8000

# Copy the FastAPI app into the container
COPY . /code

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app", "--port", "8000"]