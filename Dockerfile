# Dockerfile

# Base image
FROM python:3.10

# Set the working directory
WORKDIR /code

EXPOSE 8000

# 필요한 의존성 설치
RUN pip3 install --no-cache-dir uvicorn fastapi pillow

# Copy the FastAPI app into the container
COPY . /code

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]