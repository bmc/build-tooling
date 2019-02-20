#!/usr/bin/env bash
#
# Install or upgrade the Docker-based build tools.


IMAGE='databrickseducation/build-tool'
TAG=${1:-latest}

echo "Pulling $IMAGE:$TAG ..."
echo ""
docker pull $IMAGE:$TAG

echo ""
echo "Updating aliases ..."
echo ""
curl -s -o $HOME/.build-tools-aliases.sh https://raw.githubusercontent.com/databricks-edu/build-tooling/master/docker/aliases.sh

echo "Done!"
cat <<EOF

If you haven't already done so, add the following to your .bashrc or .zshrc:

. ~/.build-tools-aliases.sh
EOF

