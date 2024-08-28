@echo off
REM Create a virtual environment named 'venv'
python -m venv venv

REM Activate the virtual environment
call venv\Scripts\activate
python.exe -m pip install --upgrade pip

REM Install embedding model
pip install llama-index-embeddings-huggingface


REM Install necessary packages for Colbert
pip install llama-index
pip install --quiet transformers torch
pip install llama-index-postprocessor-colbert-rerank

REM Install necessary package for DSPY
pip install -U dspy-ai

REM Install necessary package for Qdrant
pip install qdrant-client

REM Install base packages
pip install jupyterlab
pip install PyMuPDF



echo Environment setup complete!
