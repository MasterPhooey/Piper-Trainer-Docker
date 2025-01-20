# Piper Voice Trainer
This repository provides a Dockerized environment for training Piper voice models. The Docker image includes all necessary dependencies for dataset preprocessing, model training, and testing. A pre-built Docker image is available at masterphooey/piper-trainer.

## Features

Preprocessing: Automatically preprocess audio datasets and generate metadata.csv.
Training: Train Piper voice models using GPU acceleration.
Testing: Test trained models by generating audio from text.
Easy Setup: Use the pre-built Docker image to get started quickly.
Prerequisites

Docker: Install Docker from https://www.docker.com.
NVIDIA GPU (Optional): For GPU acceleration, ensure you have the NVIDIA Container Toolkit installed.
## Quick Start

### 1. Pull the Docker Image

Pull the pre-built Docker image from Docker Hub:

```bash
docker pull masterphooey/piper-trainer:latest
```
### 2. Prepare Your Dataset

Create a directory on your host machine for your dataset. For example:

```bash
mkdir -p /path/to/your/dataset/wav
```
Place your audio files in the wav subdirectory. Supported formats include .wav, .mp3, and .flac.

### 3. Run the Container

Run the Docker container with the dataset directory exposed:

```bash
docker run --gpus all -p 8888:8888 \
    -v /path/to/your/dataset:/workspace/dataset \
    masterphooey/piper-trainer:latest
--gpus all: Enables GPU acceleration (omit if you don't have a GPU).
-p 8888:8888: Maps port 8888 on your host to the container.
-v /path:/data:
```

### 4. Access Jupyter Lab

Open your browser and navigate to:

```bash
http://localhost:8888
```

### 5. Use the Notebook

Open the train.ipynb notebook in Jupyter Lab. Follow the steps to:

Convert and preprocess audio files.
Train a Piper voice model.
Export and test the trained model.
Dataset Structure

Your dataset directory should have the following structure:

```bash
/path/to/your/dataset/
└── wav/
    ├── audio1.wav
    ├── audio2.wav
    └── ...
```

Place all audio files in the wav subdirectory.
The notebook will automatically generate metadata.csv and other required files.
Pre-Built Docker Image

The Docker image (masterphooey/piper-trainer) includes:

Piper and its dependencies.
Whisper for audio transcription.
Jupyter Lab for interactive development.
GPU support for accelerated training.
Building the Docker Image (Optional)

If you want to build the Docker image yourself, clone this repository and run:

bash
Copy
docker build --platform linux/amd64 -t masterphooey/piper-trainer:latest .
License

This project is licensed under the MIT License. See the LICENSE file for details.

This README.md provides a clear and concise guide for users to get started with your Dockerized Piper voice trainer. Let me know if you'd like to add or modify anything!
