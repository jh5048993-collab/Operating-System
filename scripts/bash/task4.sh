#!/bin/bash

for f in *.txt; do
  mv "$f" "OLD_$f"
done

echo "All .txt files renamed."
