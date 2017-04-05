#!/bin/bash
# My first script

echo "Enter your component name: "
read NAME
mkdir ./$NAME
echo "@import '$NAME/all';" >> _all.scss  #for components/_all.scss

touch ./$NAME/_all.scss

function createBlock {
  echo "Enter block name: "
  read BLOCK
  touch ./$NAME/_$BLOCK.scss
  echo "@import '$BLOCK';" >> ./$NAME/_all.scss
}

while true
do
  createBlock
done


