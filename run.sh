#!/usr/bin/with-contenv bashio
 Get the image name from add-on options, or use a default
IMAGE=${ADDON_CONFIG_IMAGE:-"radrootllc/karaoke-eternal/v1.0.0:latest"}

# Pull the Docker image
echo "Pulling Docker image: $IMAGE"
docker pull "$IMAGE"

# Start the Docker container
echo "Starting Docker container for image: $IMAGE"
docker run -d --name karaokeeternalHA --restart unless-stopped "$IMAGE"
