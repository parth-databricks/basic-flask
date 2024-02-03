# Use an official Python runtime as a base image
FROM python:3.9
# Set the working directory inside the container
WORKDIR /app
# Copy the requirements file to the working directory
COPY requirements.txt .
# Install app dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code to the working directory
COPY . .
# Expose port 5000 to the outside world
EXPOSE 5000
# Define the command to run the application when the container starts
CMD ["python", "app.py"]
