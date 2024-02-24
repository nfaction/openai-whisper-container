#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_video_file>"
  exit 1
fi

# Run openai-whisper on the provided video file
whisper --model medium "$@" 2>&1
