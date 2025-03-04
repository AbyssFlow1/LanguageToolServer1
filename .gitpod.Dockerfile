FROM gitpod/workspace-full

# Install necessary packages
RUN sudo apt-get update && sudo apt-get install -y \
    openjdk-11-jdk \
    unzip \
    wget

# Set the working directory
WORKDIR /workspace