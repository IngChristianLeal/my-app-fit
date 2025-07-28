# Flask Application with Health Check

A simple Python Flask application with a health check endpoint, containerized with Docker.

## Features

- Root endpoint (`/`) returning application status
- Health check endpoint (`/health`) returning health status
- Dockerized for easy deployment

## Project Structure

```
├── app.py              # Main Flask application
├── requirements.txt    # Python dependencies
├── Dockerfile         # Docker configuration
└── README.md          # This file
```

## Local Development

### Prerequisites

- Python 3.7+
- pip

### Setup and Run

1. Create a virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the application:
   ```bash
   python app.py
   ```

4. Test the endpoints:
   - Root endpoint: http://127.0.0.1:5000
   - Health check: http://127.0.0.1:5000/health

## Docker Deployment

### Prerequisites

- Docker installed and running

### Build and Run

1. Build the Docker image:
   ```bash
   docker build -t flask-app .
   ```

2. Run the container:
   ```bash
   docker run -p 5000:5000 flask-app
   ```

3. Test the endpoints:
   - Root endpoint: http://127.0.0.1:5000
   - Health check: http://127.0.0.1:5000/health

## API Endpoints

### GET /
Returns application status message.

**Response:**
```json
{
  "message": "Flask application is running"
}
```

### GET /health
Returns health check status.

**Response:**
```json
{
  "status": "healthy"
}
```

## Testing

You can test the endpoints using curl:

```bash
# Test root endpoint
curl http://127.0.0.1:5000

# Test health check
curl http://127.0.0.1:5000/health
```

Or open the URLs directly in your browser.
