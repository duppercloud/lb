#!/bin/bash

ifconfig

IP="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep 172)"

socat TCP4-LISTEN:80,fork,bind=$IP,reuseaddr TCP:127.0.0.1:8080
