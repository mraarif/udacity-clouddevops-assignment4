#!/usr/bin/env bash

if [[ "$(uname)" == "Darwin" ]]; then
  echo MAC
  brew install hadolint
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
  echo LINUX
  wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    	  chmod +x /bin/hadolint\;
fi
