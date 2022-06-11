FROM python:3.10.4-slim
WORKDIR app
# Upgrade pip
RUN pip install --upgrade pip
# Create a local virtual environment
RUN python -m venv venv
COPY requirements.txt .
# Install python requirements
RUN pip install -r requirements.txt
# Copy stonks package
COPY stonks .
# Run app.py
CMD python app.py
