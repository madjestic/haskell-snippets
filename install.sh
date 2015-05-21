#!/bin/bash

# Check for command line args.
if [ "$1" = "" ]; then
	echo "Usage: ./install.sh yasnippet-dir"
	echo "Example: ./install.sh ~/.emacs.d"
	echo "Installing to default: ~/.emacs.d:"
	cp snippets/haskell-mode/* ~/.emacs.d/snippets/haskell-mode/
	exit 1
fi

# Create the haskell-mode dir.
if [ ! -d "$1"/snippets/haskell-mode ]; then
	mkdir "$1"/snippets/haskell-mode
fi

# Copy needed files to the haskell-mode dir.
cp snippets/haskell-mode/ "$1"/snippets/haskell-mode/

exit 0
