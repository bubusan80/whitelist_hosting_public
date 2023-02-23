#!/bin/bash
# Whitelist for Pi-hole (https://pi-hole.net/) (and Nebulo https://github.com/Ch4t4r/Nebulo - only txt file)
# Based on the original script created by: GSolone - https://github.com/gioxx
# The Anudeep whitelist is also used in this script - https://github.com/anudeepND
#============================================================================================================

TICK="[\e[32m ✔ \e[0m]"
PIHOLE_LOCATION="/etc/pihole"
GRAVITY_UPDATE_COMMAND="pihole -w -q"

if [ "$(id -u)" != "0" ] ; then
	echo "This script requires root permissions. Please run this as root!"
	exit 2
fi

case "$1" in
	full)
		echo "Download whitelist of anudeepND"
		curl -sS https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80"
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/whitelist_full.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
	basic)
		echo "Download whitelist of anudeepND"
		curl -sS https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80"
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/whitelist_basic.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
	upgrade)
		echo "Upgrade shell script ..."
		wget -N https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/whitelist.sh
		chmod +x whitelist.sh
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
	clear)
		echo "Clean whitelist ..."
		: > "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Deleting whitelist... \e[0m"
		pihole -w --nuke
		wait
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
	*)
		echo
		echo "Option for use script:"
		echo "full"
		echo "basic"
		echo "upgrade"
		echo "clear"
		echo "example: sudo ./whitelist.sh full"
		echo -e " ${NOADS} "
		exit 1
		;;
esac
