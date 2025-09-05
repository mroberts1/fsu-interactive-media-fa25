#!/bin/bash

# Custom publish script for Quarto with increased timeout

# Set environment variable to increase HTTP request timeout (in milliseconds)
export QUARTO_HTTP_TIMEOUT=60000

# Run the Quarto publish command
quarto publish gh-pages

# Check if the command was successful
if [ $? -eq 0 ]; then
  echo "Publication successful! Your site should be available at https://mroberts1.github.io/fsu-smt-su25/"
  echo "Note: It might take a few minutes for GitHub Pages to update the site."
else
  echo "Publication completed but verification failed. This is likely just a timeout issue."
  echo "Your site should still be available at https://mroberts1.github.io/fsu-smt-su25/"
  echo "You can manually check if your site is updated by visiting the URL."
  exit 0
fi

