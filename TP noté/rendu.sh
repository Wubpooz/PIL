#!/usr/bin/bash                                                                     
host=`hostname`
rm -f rendu-$host.zip
cp -r src src-$host
zip -r rendu-$host.zip src-$host
cp rendu-$host.zip /public/pil/RENDU
rm -rf src-$host
