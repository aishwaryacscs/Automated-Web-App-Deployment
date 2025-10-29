Write-Host "🚀 Starting Deployment..." -ForegroundColor Cyan

# Step 1: Build Docker image
Write-Host "🔧 Building Docker image..." -ForegroundColor Yellow
docker build -t webapp .

# Step 2: Stop and remove existing container (if running)
Write-Host "🧹 Cleaning up old containers..." -ForegroundColor Yellow
docker stop webapp -ErrorAction SilentlyContinue
docker rm webapp -ErrorAction SilentlyContinue

# Step 3: Run new container
Write-Host "🐳 Running new Docker container..." -ForegroundColor Yellow
docker run -d -p 5000:5000 --name webapp webapp

# Step 4: Verify container status
Write-Host "📋 Checking running containers..." -ForegroundColor Yellow
docker ps

Write-Host "✅ Deployment Successful! Access the app at: http://localhost:5000" -ForegroundColor Green
