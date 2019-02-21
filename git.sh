#!/bin/sh
git add .
echo "mensaje del commit"
read msg
git commit -m $msg
git push
