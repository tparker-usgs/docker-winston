#!/bin/sh

VERSION=`cat VERSION`

URL=https://volcanoes.usgs.gov/software/winston/bin/winston-${VERSION}-bin.zip
wget $URL

FILE=winston-${VERSION}-bin.zip
unzip $FILE
rm $FILE
ln -s winston-${VERSION} winston
