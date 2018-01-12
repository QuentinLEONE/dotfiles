function launch_wifi
    sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B; dhcpcd wlan0
end
