#!/bin/bash

# Default values
USE_PRODUCTION=false
SERIAL_PORT=""
BAUDRATE=""

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -p)
      USE_PRODUCTION=true
      if [[ -n "$2" && -n "$3" ]]; then
        SERIAL_PORT="$2"
        BAUDRATE="$3"
        shift 2
      else
        echo "Error: Missing serial port or baudrate for -p option."
        exit 1
      fi
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
  shift
done

# Navigate to GCS-Frontend and run npm
cd Sortify-FE
if [ -d "node_modules" ]; then
  echo "Dependencies found for Sortify-FE."
else
  echo "Installing dependencies for Sortify-FE..."
  npm install
fi

if [ "$USE_PRODUCTION" = true ]; then
  echo "Running Sortify-FE in production mode..."
  npm start &
else
  echo "Running Sortify-FE in development mode..."
  npm run dev &
fi

# Navigate to GCS-Backend and run npm
cd ../Sortify-BE
if [ -d "node_modules" ]; then
  echo "Dependencies found for Sortify-BE."
else
  echo "Installing dependencies for Sortify-BE..."
  npm install
fi
npm run dev &

# Navigate to GCS-PyMavlink and run Python script
cd ../Sortify-Camera
if [ -f "src/main.py" ]; then
  echo "Running Sortify-Camera..."
  if [ "$USE_PRODUCTION" = true ]; then
    python3 src/main.py "$SERIAL_PORT" "$BAUDRATE" &
  else
    python3 src/main.py &
  fi
else
  echo "Error: main.py not found in Sortify-Camera."
  exit 1
fi

# Wait for all background processes to finish
wait

# Notify the user that all processes are finished
echo "All Sortify services are running."

