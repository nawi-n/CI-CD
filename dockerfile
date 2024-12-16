# Use an official Python runtime as the base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the necessary files
COPY requirements.txt .
COPY main.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default port for FastAPI
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
