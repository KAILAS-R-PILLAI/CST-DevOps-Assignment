# Use a minimal, secure Python image
FROM python:3.10-slim

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Create a non-root user and app directory
RUN useradd --create-home appuser
WORKDIR /home/appuser/app

# Copy only dependency files first for better caching
COPY requirements.txt .

# Install dependencies as root
RUN pip install --no-cache-dir -r requirements.txt

# Switch to non-root user
USER appuser

# Copy the rest of the application
COPY --chown=appuser:appuser . .

# Expose the port your app runs on
EXPOSE 3200

# Default command to run your app
CMD ["streamlit", "run", "main.py", "--server.address=0.0.0.0", "--server.port=3200"]

