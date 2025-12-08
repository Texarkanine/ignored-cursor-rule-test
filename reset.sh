#!/usr/bin/env bash
# Remove the copied file
rm -f .cursor/rules/local/fruit-preferences.mdc
rm -f .cursor/rules/local/hate-apples.mdc

# Remove the directory if it's empty
if [ -d .cursor/rules/local ]; then
  rmdir .cursor/rules/local 2>/dev/null || true
fi

# Remove the entry from .git/info/exclude if it exists
if [ -f .git/info/exclude ]; then
  # Remove the line if it exists
  sed -i '/^\.cursor\/rules\/local\/$/d' .git/info/exclude
fi

