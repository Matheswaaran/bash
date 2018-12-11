#!/bin/bash
declare -i lin=$1
echo line = $1
echo var lin = $lin
echo echoing \$\(\(\$lin\)\) = $(($lin))
sed -i $(($lin))d $2
#command e.g. = sed -i 2d <file.ext>
