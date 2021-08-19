#!/usr/bin/env sh

if command -v az &> /dev/null; then
	az upgrade
fi
