#!/bin/sh
git add .
echo "mensaje de commit"
read msg
git commit -m $msg
git push
elihu16
