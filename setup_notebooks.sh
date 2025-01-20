#!/bin/bash

# Check if the Piper training notebook exists in /data
if [ ! -f /data/train.ipynb ]; then
    echo "Piper training notebook not found in /data. Copying the default notebook..."
    cp /root/train.ipynb /data/train.ipynb
else
    echo "Piper training notebook already exists in /data. Skipping copy."
fi

# Execute the command passed to the container
exec "$@"
