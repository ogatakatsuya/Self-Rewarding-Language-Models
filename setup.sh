#!/bin/bash

# Install dependencies (creates .venv automatically)
uv sync

# Download the dataset
git clone https://huggingface.co/datasets/schauppi/srlm

# Create a directory for the data
mkdir -p data

# Create results directories
mkdir -p results

# Move the dataset to the data directory
mv srlm/srlm_ift.jsonl data

# Remove the dataset directory
rm -rf srlm
