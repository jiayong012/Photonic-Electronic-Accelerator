#!/bin/bash

# 1. cd ./image and execute run.py
echo "Running ./image/run.py..."
cd ./image || exit 1
python run.py
cd - > /dev/null

# 2. cd ./video/segmentation and execute run.py
echo "Running ./video/segmentation/run.py..."
cd ./video/segmentation || exit 1
python run.py
cd - > /dev/null

# 3. cd video/understanding and execute run.py
echo "Running ./video/understanding/run.py..."
cd ./video/understanding || exit 1
python run.py
cd - > /dev/null

echo "All tasks completed."
