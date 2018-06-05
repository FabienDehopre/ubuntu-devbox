#!/bin/sh

# Configure NPM & Update NPM to latest version
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g npm

# Install Node Packages via Yarn
yarn global add @angular/cli conventional-changelog-angular conventional-changelog-cli conventional-recommended-bump node-gyp semver standard-changelog trash-cli webpack-bundle-analyzer
