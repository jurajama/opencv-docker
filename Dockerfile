# Use an official Python runtime as a base image
FROM python:3.13-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Install OpenCV
RUN pip install opencv-python-headless matplotlib pandas

CMD ["/bin/bash"]
