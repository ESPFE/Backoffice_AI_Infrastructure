## Build Ollama
FROM ollama/ollama:latest
## Install curl
RUN apt-get update && apt-get install -y curl
## Setup Entrypoint for pulling llms -> defined by envirenment in compose.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]