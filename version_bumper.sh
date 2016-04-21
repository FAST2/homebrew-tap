#!/bin/sh
export SHA=`curl -s http://webdocker:8090/view/Base/job/installationspaket/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz.sha256`

# Bumpar minor versionen med 1, ie 1.2.1 -> 1.2.2  0.9 -> 0.10 etc
export NEWVERSION=$(grep version fast2_docker_tools.rb | awk '{print $2}' | cut -f2 -d'"' | awk -F. '{$NF = $NF + 1;} 1' | sed 's/ /./g')

# Tar bort raden med "version" och lägger in en ny på rad 5. Funkar inte på OSX. Go figure.
sed -i "/version/d" fast2_docker_tools.rb
sed -i "5i\ \ version \"$NEWVERSION\"" fast2_docker_tools.rb


# Tar bort raden med "sha" och lägger in en ny på rad 6. Funkar inte på OSX. Go figure.
sed -i "/sha/d" fast2_docker_tools.rb
sed -i "6i\ \ \sha256 \"$SHA\"" fast2_docker_tools.rb

