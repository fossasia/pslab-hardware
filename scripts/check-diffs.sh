#!/bin/sh
set -e

# #setup git
git config --global user.email "noreply@travis.com"
git config --global user.name "Travis CI"

# #clone the repository
echo "Where we started"
ls

git clone --quiet --branch=diff-img https://CloudyPadmal:$GITHUB_KEY@github.com/CloudyPadmal/pslab-hardware diff-img > /dev/null
cd diff-img

convert -colorspace gray front-layer.png old-front.png
convert -colorspace gray bottom-layer.png old-bottom.png
convert -colorspace gray signal-layer.png old-signal.png
convert -colorspace gray power-layer.png old-power.png

mv ../output/Images/* .

convert -colorspace gray front-layer.png new-front.png
convert -colorspace gray bottom-layer.png new-bottom.png
convert -colorspace gray signal-layer.png new-signal.png
convert -colorspace gray power-layer.png new-power.png

composite -stereo 0 old-front.png new-front.png diff-front.png
composite -stereo 0 old-bottom.png new-bottom.png diff-bottom.png
composite -stereo 0 old-signal.png new-signal.png diff-signal.png
composite -stereo 0 old-power.png new-power.png diff-power.png

rm -rf old-* new-*

git checkout --orphan temporary
git add .
git commit -m "Updating diff images"

git branch -D diff-img
git branch -m diff-img

git push origin diff-img -f --quiet > /dev/null
