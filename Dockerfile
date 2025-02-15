# Use official Python image
FROM python:3.12

# Set working directory inside the container
WORKDIR /app

# Copy the app code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 5000

# Start the Gunicorn server
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

# .csv file
COPY us-software-engineer-jobs-updated.csv /app/