# Use Ubuntu Server as the base image
FROM ubuntu:latest
# Update package lists and install necessary packages
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# Copy my website files into the container
COPY . /app
# Set the working directory
WORKDIR /app
# Expose port 8000 for the web server
EXPOSE 8000
# Start the Python web server
CMD ["python3", "cgi-bin/redirect.py"]