# Use Python 3.9.9 image
FROM python:3.9.9-slim

# Set a working directory
WORKDIR /app

# Install ffmpeg, required for handling video files
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Install openai-whisper
RUN pip install --no-cache-dir openai-whisper

# Pre-download the Whisper medium model
RUN python -c "import whisper; whisper.load_model('medium')"

# Copy the entrypoint script to the container
COPY entrypoint.sh /entrypoint.sh

# Make sure the script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint script to be executed
ENTRYPOINT ["/entrypoint.sh"]
