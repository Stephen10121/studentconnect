# Use the official minimal Bun image
FROM oven/bun:1.4-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker caching (using bun.lock)
COPY package.json* bun.lock* ./

# Install dependencies using the text lockfile
RUN bun ci

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Run the simple file
CMD ["bun", "run", "index.ts"]