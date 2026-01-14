# Use Node.js official image
FROM node:20

# Create app directory
WORKDIR /app


# Copy app source code
COPY . .

RUN echo "Listing files:" && ls

# Install dependencies
RUN npm ci --omit=dev

# Expose port your app uses
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
