#!/bin/bash

# Cleanup script for the Agentic Development Course
# This script removes all generated files in the app-workspace to start fresh.

WORKSPACE_DIR="./app-workspace"

echo "🧹 Starting cleanup process..."

# Check if the directory exists
if [ -d "$WORKSPACE_DIR" ]; then
  # Remove everything inside app-workspace EXCEPT the README.md if it exists
  # We use find to keep the directory itself and the placeholder README
  
  echo "🗑️  Removing generated files in $WORKSPACE_DIR..."
  find "$WORKSPACE_DIR" -mindepth 1 ! -name 'README.md' -exec rm -rf {} +
  
  echo "✅ Cleanup complete! The workspace is ready for a new run."
else
  echo "⚠️  Directory $WORKSPACE_DIR not found. Nothing to clean."
fi
