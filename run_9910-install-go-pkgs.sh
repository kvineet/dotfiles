#!/usr/bin/env bash

# install go packages if go is available
if command -v go > /dev/null; then
  # Tools for go development
  go install golang.org/x/tools/gopls@latest
  go install github.com/go-delve/delve/cmd/dlv@latest
  go install github.com/mdempsky/gocode@latest
  go install github.com/stamblerre/gocode@latest
  go install github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
  go install github.com/ramya-rao-a/go-outline@latest
  go install github.com/acroca/go-symbols@latest
  go install golang.org/x/tools/cmd/guru@latest
  go install golang.org/x/tools/cmd/gorename@latest
  go install github.com/fatih/gomodifytags@latest
  go install github.com/haya14busa/goplay/cmd/goplay@latest
  go install github.com/josharian/impl@latest
  go install github.com/tylerb/gotype-live@latest
  go install github.com/rogpeppe/godef@latest
  go install github.com/zmb3/gogetdoc@latest
  go install mvdan.cc/gofumpt/gofumports@latest
  go install mvdan.cc/gofumpt@latest
  go install golang.org/x/tools/cmd/goimports@latest
  go install github.com/sqs/goreturns@latest
  go install winterdrache.de/goformat/goformat@latest
  go install github.com/cweill/gotests/gotests@latest
  go install golang.org/x/lint/golint@latest
  go install honnef.co/go/tools/cmd/staticcheck@latest
  go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
  go install github.com/mgechev/revive@latest
  go install github.com/davidrjenni/reftools/cmd/fillstruct@latest
  go install github.com/godoctor/godoctor@latest
  go install github.com/x-motemen/gore/cmd/gore@latest
  go install github.com/mikefarah/yq/v4@latest
  go install github.com/onsi/ginkgo/ginkgo@latest
  # bitagent for bitwarden
  go install github.com/mjslabs/bitagent@latest
fi
