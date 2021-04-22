#!/bin/sh
#set -eo pipefail
#set -e

rtt=$(git describe --tags `git rev-list --tags --max-count=1`)
rc=$(git rev-parse --short HEAD)
rb=$(git rev-parse --abbrev-ref HEAD)
rbb=$(git symbolic-ref --short -q HEAD)
rbbb=$(git branch --contains $rtt | grep '*')
rbbbb=$(git branch --contains v1.0.2 | grep '*')

# echo rtt=======$rtt
# echo rc=======$rc
# echo rb=======$rb
# echo rbb=======$rbb
# echo rbbb=======$rbbb
# echo rbbbb=======$rbbbb

echo ${{ steps.tag.outputs.result }}
echo ============1
git tag
echo ============2
git describe --tags `git rev-list --tags --max-count=1`
echo ============3
git describe --tags --abbrev=0
