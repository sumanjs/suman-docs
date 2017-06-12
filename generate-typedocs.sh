#!/usr/bin/env bash

# npm install typedoc --global

cd $(dirname "$0")

typedoc --exclude node_modules --out typedocs/ ~/WebstormProjects/oresoftware/sumanjs/suman
