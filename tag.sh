#!/bin/sh

VERSION=`cat VERSION`
echo Tagging release $VERSION
git add VERSION
git commit -m 'version bump'
git push \
&& git tag $VERSION \
&& git push --tags
