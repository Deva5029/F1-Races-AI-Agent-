#!/bin/bash

# Create and activate a clean virtual environment
python3 -m venv genai_env
source genai_env/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install required packages
pip install google-generativeai jupyter python-dotenv

# Add the environment to Jupyter
python -m ipykernel install --user --name=genai_env --display-name "Python (genai_env)"

echo "✅ Environment 'genai_env' created and linked to Jupyter successfully."
echo "👉 Start Jupyter with: jupyter notebook"
echo "👉 In your notebook: Kernel > Change Kernel > Python (genai_env)"

