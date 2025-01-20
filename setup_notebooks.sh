#!/bin/bash

# Check if the Piper training notebook exists in /data
if [ ! -f /data/piper_training_notebook.ipynb ]; then
    echo "Piper training notebook not found in /data. Copying the default notebook..."
    cp /root/piper_training_notebook.ipynb /data/piper_training_notebook.ipynb
else
    echo "Piper training notebook already exists in /data. Skipping copy."
fi

# Execute the command passed to the container
exec "$@"
