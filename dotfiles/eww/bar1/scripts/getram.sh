free -h | awk 'NR==2{printf "%s\n", $3}' | cut -c1-3
