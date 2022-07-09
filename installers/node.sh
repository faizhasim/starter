#!/usr/bin/env bash

###############################################################################
# Node
###############################################################################

install_node() {
  # make cache folder (if missing) and take ownership
  sudo mkdir -p /usr/local/n
  sudo chown -R $(whoami) /usr/local/n
  # make sure the required folders exist (safe to execute even if they already exist)
  sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  # take ownership of Node.js install destination folders
  sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  n lts
  curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
  bash n lts
  # Now node and npm are available
  npm install -g n
}

# Node and yarn *should* be installed at this point
hash node 2>/dev/null || install_node
hash yarn 2>/dev/null || brew install yarn

# Update npm
npm update -g npm

# Install Node packages
node_packages=(
  create-next-app
  create-react-app
  flow-typed
  gatsby
  http-server
  lerna
  pm2
  renovate
  semantic-release-cli
  serve
  serverless
  simplehttpserver
  sku
  skuba
  wrangler
)

# Loop through each package individally because
# any errors will stop all installations
for package in "${node_packages[@]}"; do
  yarn global add "$package"
done
