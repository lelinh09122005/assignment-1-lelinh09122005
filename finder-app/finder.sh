#!/bin/sh

# ĐÚNG: Có khoảng trắng bao quanh dấu [ và ]
if [ $# -lt 2 ]; then
    echo "Error: Missing parameters."
    exit 1
fi

filesdir=$1
searchstr=$2

# ĐÚNG: Có khoảng trắng sau dấu ! và bao quanh [ ]
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
