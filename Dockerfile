# 1. Use an official Python runtime as a base
FROM python:3.10-slim

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy requirements first (for caching)
COPY requirements.txt requirements.txt

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the app
COPY . .

# 6. Run the app
CMD ["python", "app.py"]
