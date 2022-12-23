#!/bin/bash

hugo &
rsync -a public/ root@www.cromch.com:/var/lib/docker/volumes/www/_data

