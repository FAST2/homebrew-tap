#!/bin/sh
export SHA=`curl -s http://webdocker:8090/view/Base/job/installationspaket/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz.sha256`

# Lägger in raderna på en viss rad. Funkar inte på max. Go figure.
sed -i "/sha/d" fast2_docker_tools.rb
sed -i "6i\ \ \sha256 \"$SHA\"" fast2_docker_tools.rb
