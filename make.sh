#!/bin/sh
makepage page.md -f html | mawk '{ print } ($0 ~ /^.head/) { print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />" }' > index.html
