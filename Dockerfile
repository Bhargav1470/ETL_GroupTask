# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 
ARG OPENWEATHER_API_KEY
ENV OPENWEATHER_API_KEY=$OPENWEATHER_API_KEY

# Make port 80 available to the world outside this container
EXPOSE 80

# Run test.py when the container launches
CMD ["python", "main.py"]