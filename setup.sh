#!/usr/bin/env bash
mkdir -p .cursor/rules/local
cp fruit-preferences.md .cursor/rules/local/fruit-preferences.mdc
cp hate-apples.md .cursor/rules/local/hate-apples.mdc

if [ ! -f .git/info/exclude ]; then
  mkdir -p .git/info
  touch .git/info/exclude
fi

grep -qxF '.cursor/rules/local/' .git/info/exclude || echo '.cursor/rules/local/' >> .git/info/exclude
