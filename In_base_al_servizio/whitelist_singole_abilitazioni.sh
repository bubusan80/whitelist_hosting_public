#!/bin/bash
# Whitelist for Pi-hole (https://pi-hole.net/) and Nebulo (https://github.com/Ch4t4r/Nebulo - only txt file)
# This script only supports pi-holes
# Based on the original script created by: GSolone - https://github.com/gioxx
#============================================================================================================

TICK="[\e[32m ✔ \e[0m]"
PIHOLE_LOCATION="/etc/pihole"
GRAVITY_UPDATE_COMMAND="pihole -w -q"
NOADS="*www.navigaresezapubblicita.altervista.org*"

if [ "$(id -u)" != "0" ] ; then
	echo "This script requires root permissions. Please run this as root!"
	exit 2
fi

case "$1" in
	host_video)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Abilitazioni_host_video.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	aliexpress_alibaba)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Aliexpress_Alibaba.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	amazon_e_servizi_aws)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Amazon_e_servizi_aws.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	ampproject)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Ampproject.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	apple)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Apple.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	bootstrapcdn)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Bootstrapcdn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	disneyplus_by_opendns)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Disneyplus_by_opendns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	discord)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Discord.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	eon_energia)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Eon_energia.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	games_e_console)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Games_e_console.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	google_chrome_dns)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_chrome_dns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	google_servizi)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	hola_vpn)
	        echo "Download... "
	        curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Hola_vpn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
                echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
                wait
                echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
                mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
                echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
                ${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
                echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
                echo -e " ${TICK} \e[32m Ok! \e[0m"
                echo -e " ${NOADS} "
                ;;
	iobit)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Iobit.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	microsoft_pc_e_app_su_smartphone)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Microsoft_pc_e_app_su_smartphone.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	mozilla_firefox)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Mozilla_Firefox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	netflix)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Netflix.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	operatore_tim_e_modem)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Operatore_Tim_e_modem.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	paypal)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paypal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	paramountplus)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paramountplus.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	posteitaliane)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Posteitaliane.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	rai_streaming_e_app)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Rai_streaming_e_app.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	samsung_servizi)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Samsung_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	sisal)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Sisal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	torrent_download)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Torrent_download.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	utility_varie)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Utility_varie.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
        wisecleaner)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Wisecleaner.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
  
        xbox)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Xbox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		wait
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	All)
                echo "Download whitelist of bubusan80 - Abilitazioni_host..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Abilitazioni_host_video.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Aliexpress_Alibaba..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Aliexpress_Alibaba.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt		
		echo "Download whitelist of bubusan80 - Amazon_e_servizi_aws..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Amazon_e_servizi_aws.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Ampproject..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Ampproject.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Apple..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Apple.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Bootstrapcdn..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Bootstrapcdn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Discord..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Discord.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Disneyplus_by_opendns..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Disneyplus_by_opendns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
                wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Eon_energia..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Eon_energia.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Games_e_console..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Games_e_console.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Google_chrome_dns..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_chrome_dns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Google_pubblicita..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_pubblicita.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Google_servizi..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
                echo "Download whitelist of bubusan80 - Hola_vpn..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Hola_vpn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
                wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Iobit..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Iobit.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Microsoft_pc_e_app_su_smartphone..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Microsoft_pc_e_app_su_smartphone.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Mozilla_Firefox..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Mozilla_Firefox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Netflix..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Netflix.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Operatore_Tim_e_modem..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Operatore_Tim_e_modem.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Paypal..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paypal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Paramountplus..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paramountplus.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Posteitaliane..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Posteitaliane.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Rai_streaming_e_app..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Rai_streaming_e_app.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Samsung_servizi..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Samsung_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Sisal..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Sisal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Torrent_download..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Torrent_download.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Utility_varie..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Utility_varie.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Wisecleaner..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Wisecleaner.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
                mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
                echo "Download whitelist of bubusan80 - Xbox..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Xbox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
                wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
        All_no_google)
                echo "Download whitelist of bubusan80 - Abilitazioni_host_video..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Abilitazioni_host_video.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Aliexpress_Alibaba..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Aliexpress_Alibaba.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt		
		echo "Download whitelist of bubusan80 - Amazon_e_servizi_aws..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Amazon_e_servizi_aws.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Ampproject..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Ampproject.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Apple..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Apple.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Bootstrapcdn..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Bootstrapcdn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Disneyplus_by_opendns..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Disneyplus_by_opendns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Discord..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Discord.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Eon_energia..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Eon_energia.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Games_e_console..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Games_e_console.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Iobit..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Iobit.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Microsoft_pc_e_app_su_smartphone..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Microsoft_pc_e_app_su_smartphone.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Mozilla_Firefox..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Mozilla_Firefox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Netflix..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Netflix.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Operatore_Tim_e_modem..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Operatore_Tim_e_modem.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Paypal..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paypal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Paramountplus..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/paramountplus.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Posteitaliane..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Posteitaliane.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
                mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Rai_streaming_e_app..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Rai_streaming_e_app.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Samsung_servizi..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Samsung_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Sisal..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Sisal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Torrent_download..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Torrent_download.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Utility_varie..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Utility_varie.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo "Download whitelist of bubusan80 - Wisecleaner..."
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Wisecleaner.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
                mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
                echo "Download whitelist of bubusan80 - Hola_vpn..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Hola_vpn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		wait
                mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
                echo "Download whitelist of bubusan80 - Xbox..."
                curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Xbox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
                wait
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		echo -e " ${NOADS} "
		;;
	upgrade)
		echo "Upgrade shell script ..."
		wget -N https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/whitelist_singole_abilitazioni.sh
		chmod +x whitelist_singole_abilitazioni.sh
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	clear)
		echo "Clean whitelist ..."
		: > "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		pihole -w --nuke
		wait
		echo -e " ${TICK} \e[32m Pi-hole whitelist has been cleaned \e[0m"
		echo -e " ${TICK} \e[32m Ok! \e[0m"
		echo -e " ${NOADS} "
		;;
	*)
		echo "Option for use script:"
		echo "host_video"
		echo "aliexpress_alibaba"
		echo "amazon_e_servizi_aws"
		echo "ampproject"
		echo "apple"
		echo "bootstrapcdn"
		echo "discord"
                echo "disneyplus_by_opendns"
		echo "eon_energia"
		echo "games_e_console"
		echo "google_chrome_dns"
		echo "google_servizi"
		echo "hola_vpn"
		echo "iobit"
		echo "microsoft_pc_e_app_su_smartphone"
		echo "mozilla_firefox"
		echo "netflix"
		echo "operatore_tim_e_modem"
		echo "paypal"
		echo "paramountplus"
		echo "posteitaliane"  
		echo "rai_streaming_e_app"
		echo "samsung_servizi"
		echo "sisal"
		echo "torrent_download"
		echo "utility_varie"
                echo "xbox"
		echo "wisecleaner"
		echo "All"
		echo "All_no_google"
		echo "upgrade"
		echo "clear"
		echo -e " ${NOADS} "
		exit 1
		;;
esac
