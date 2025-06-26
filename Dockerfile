FROM ghost:5-alpine

# Copy config
COPY config.production.json /var/lib/ghost/config.production.json

# Set working directory
WORKDIR /var/lib/ghost

# Expose port
EXPOSE 2368

# Start Ghost
CMD ["ghost", "run"]