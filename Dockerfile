# Set the base image to use
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Set the working directory to /app
WORKDIR /app

# Copy the app code and requirements.txt file to the container
COPY ./ app/
COPY requirements.txt .

# Install the app dependencies
RUN pip install -r requirements.txt

# Expose port 80 for the container
EXPOSE 80

# Set the command to run when the container starts
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
