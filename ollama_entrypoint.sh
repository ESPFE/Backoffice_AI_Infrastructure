#!/bin/bash
## Starte den Ollama-Dienst im Hintergrund
ollama serve &
    OLLAMA_PID=$!
# Warte, bis der Dienst bereit ist
echo "Warte auf Ollama-Server..."
until curl -s http://localhost:11434 > /dev/null; do
  sleep 1
done
# Modelle aus Umgebungsvariable laden
IFS=',' read -ra MODELS <<< "$LLM_MODELS"
for model in "${MODELS[@]}"; do
  echo "Lade Modell: $model"
  ollama pull "$model"
done
# Warte auf den Ollama-Prozess
wait $OLLAMA_PID