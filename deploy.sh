#!/bin/bash

# Build the site
hugo

# Navigate to the public directory
cd public

# Deploy to gh-pages branch
git init
git remote add origin https://github.com/<username>/<repo>.git
git checkout -b gh-pages
git add .
git commit -m "Update site"
git push -f origin gh-pages

# Go back to the project root
cd ..
