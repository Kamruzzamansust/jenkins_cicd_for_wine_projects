# Use official Python image as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files to container
COPY . .

# Expose port for FastAPI
EXPOSE 9000

# Run FastAPI app using Uvicorn
CMD ["uvicorn", "model_serving:app", "--host", "0.0.0.0", "--port", "9000"]
