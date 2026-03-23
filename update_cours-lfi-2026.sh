#!/bin/bash

# Script to update the cours-lfi-2026 submodule and push changes to the main repository

echo "Updating cours-lfi-2026 submodule..."

# Navigate to the cours-lfi-2026 submodule directory and pull the latest changes
cd /Users/pablo/Documents/pablo.donato/cours-lfi-2026 || { echo "Failed to enter cours-lfi-2026 directory"; exit 1; }
git pull origin main || { echo "Failed to pull latest changes in cours-lfi-2026"; exit 1; }

# Return to the main repository directory
cd /Users/pablo/Documents/pablo.donato || { echo "Failed to return to main repository directory"; exit 1; }

# Commit the updated submodule
git add cours-lfi-2026 || { echo "Failed to add cours-lfi-2026 submodule"; exit 1; }
git commit -m "Update cours-lfi-2026 submodule to latest version" || { echo "Failed to commit changes"; exit 1; }

# Push the changes to the main repository
git push origin main || { echo "Failed to push changes to main repository"; exit 1; }

echo "cours-lfi-2026 submodule updated and changes pushed successfully."