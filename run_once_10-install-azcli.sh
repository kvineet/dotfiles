#!/usr/bin/env sh

if ! command -v az &> /dev/null; then
	curl -L https://aka.ms/InstallAzureCli | bash
fi
