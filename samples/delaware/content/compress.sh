#!/bin/bash
cd tiles
for entry in *.b3dm
do
  echo "$entry"
  b3dm unpack -i "$entry" -f
  filename="${entry%.*}"
  node "D:\dev\github.com\javagl\gltf-pipeline\bin\gltf-pipeline.js" -i "$filename".glb -o "$filename".glb -d -b --draco.compressionLevel 0
  b3dm pack -i "$filename".glb -f
  rm "$filename".glb
  if [ -f "$filename".batchtable.json ]; then
    rm "$filename".batchtable.json
  fi
  if [ -f "$filename".featuretable.json ]; then
    rm "$filename".featuretable.json
  fi
done