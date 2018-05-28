#bin/bash

space=$(df / | tail -1 | awk '{print $4}')
echo $(echo "scale=1; $space/1048576" | bc)"G"
