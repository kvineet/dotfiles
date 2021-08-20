#!/usr/bin/env sh

if ! command -v az &> /dev/null; then
	curl -L https://aka.ms/InstallAzureCli | bash
	az config set auto-upgrade.enable=yes
fi