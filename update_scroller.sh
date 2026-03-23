#!/bin/bash

# Script to update the scroller submodule and push changes to the main repository

echo "Updating scroller submodule..."

# Navigate to the scroller submodule directory and pull the latest changes
cd /Users/pablo/Documents/pablo.donato/scroller || { echo "Failed to enter scroller directory"; exit 1; }
git pull origin main || { echo "Failed to pull latest changes in scroller"; exit 1; }

# Return to the main repository directory
cd /Users/pablo/Documents/pablo.donato || { echo "Failed to return to main repository directory"; exit 1; }

# Commit the updated submodule
git add scroller || { echo "Failed to add scroller submodule"; exit 1; }
git commit -m "Update scroller submodule to latest version" || { echo "Failed to commit changes"; exit 1; }

# Push the changes to the main repository
git push origin main || { echo "Failed to push changes to main repository"; exit 1; }

echo "Scroller submodule updated and changes pushed successfully."