# Use Python 3.11 slim-bookworm as base image
FROM python:3.11-slim-bookworm

# Set working directory in container
WORKDIR /app

# # Install curl for downloading uv
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends curl && \
#     rm -rf /var/lib/apt/lists/*

# Install uv
RUN python -m pip install --no-cache-dir uv
# Create a venv for python then activate it
RUN uv venv --python 3.11
RUN . .venv/bin/activate

# Copy over your app
COPY . .

# Install all the requirements.
RUN uv sync

# Command to run your application
CMD ["python", "entrypoint.py"]