# Use the latest Ubuntu image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install required packages and clean up cache
RUN apt-get update && \
    apt-get install -y \
    bash \
    curl \
    fortune \
    cowsay \
    netcat-traditional && \
    rm -rf /var/lib/apt/lists/*

# Copy the local files to the /app directory in the container
COPY . /app

# Make the wisecow.sh script executable
RUN chmod +x wisecow.sh

# Set the entrypoint to run the wisecow.sh script
ENTRYPOINT ["./wisecow.sh"]
