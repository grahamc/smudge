#!/bin/sh

git config --local filter.unblack.smudge "$PWD/git/other.sh"
git config --local filter.unblack.clean "$PWD/git/black.sh"

