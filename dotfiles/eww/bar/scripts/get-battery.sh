battery=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ $battery -le "10" ]]; then
    echo "  $battery%"
elif [[ $battery -le "30" ]]; then  
    echo "  $battery%"
elif [[ $battery -le "50" ]]; then  
    echo "  $battery%"
elif [[ $battery -le "80" ]]; then  
    echo "  $battery%"
else
    echo "  $battery%"
fi
