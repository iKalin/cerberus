#!/bin/bash

for filename in *.mp4; do mv "$filename" "prefix_$filename"; done;