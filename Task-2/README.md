# Task 2: Docker Deployment

## Steps:
1. Installed Docker
2. Created Dockerfile
3. Built Docker image
4. Ran container on port 8000

## Commands:
sudo apt install docker.io
docker build -t my-web-app .
docker run -d -p 8000:80 my-web-app

## Output:
Application accessible on http://localhost:8000/
