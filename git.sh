#!/bin/sh
git add .
echo "mensaje de commit(sin espacios)"
read msg
git commit -m $msg
git push
