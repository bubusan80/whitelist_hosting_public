#!/bin/bash
# Whitelist for Pi-hole (https://pi-hole.net/) (and Nebulo https://github.com/Ch4t4r/Nebulo - only txt file)
# Based on the original script created by:
# Anudeep - https://github.com/anudeepND
# GSolone - https://github.com/gioxx
#============================================================================================================

TICK="[\e[32m ✔ \e[0m]"
PIHOLE_LOCATION="/etc/pihole"
GRAVITY_UPDATE_COMMAND="pihole -w -q"

if [ "$(id -u)" != "0" ] ; then
	echo "This script requires root permissions. Please run this as root!"
	exit 2
fi

case "$1" in
	host_video)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Abilitazioni_host_video.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	aliexpress_alibaba)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Aliexpress_Alibaba.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	amazon_e_servizi_aws)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Amazon_e_servizi_aws.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	ampproject)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Ampproject.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	apple)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Apple.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	bootstrapcdn)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Bootstrapcdn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	disneyplus_by_opendns)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Bootstrapcdn.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	eon_energia)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Eon_energia.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	games_e_console)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Games_e_console.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	google_chrome_dns)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_chrome_dns.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	google_servizi)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Google_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	iobit)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Iobit.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	microsoft_pc_e_app_su_smartphone)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Microsoft_pc_e_app_su_smartphone.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	mozilla_Firefox)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Mozilla_Firefox.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	netflix)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Netflix.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	operatore_tim_e_modem)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Operatore_Tim_e_modem.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	paypal)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Paypal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	rai_streaming_e_app)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Rai_streaming_e_app.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	samsung_servizi)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Samsung_servizi.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	sisal)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Sisal.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	torrent_download)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Torrent_download.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	utility_varie)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Utility_varie.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	wisecleaner)
		echo "Download... "
		curl -sS https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/Wisecleaner.txt | sudo tee -a "${PIHOLE_LOCATION}"/whitelist.txt >/dev/null
		echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
		sleep 0.3
		echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
		mv "${PIHOLE_LOCATION}"/whitelist.txt "${PIHOLE_LOCATION}"/whitelist.txt.bck && cat "${PIHOLE_LOCATION}"/whitelist.txt.bck | sort | uniq >> "${PIHOLE_LOCATION}"/whitelist.txt

		echo -e " [...] \e[32m Pi-hole whitelist rebuilding lists. This may take a while... \e[0m"
		${GRAVITY_UPDATE_COMMAND} $(cat /etc/pihole/whitelist.txt | xargs) > /dev/null
		echo -e " ${TICK} \e[32m Pi-hole's whitelist updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;

	upgrade)
		echo "Upgrade shell script ..."
		wget -N https://raw.githubusercontent.com/bubusan80/whitelist_pihole_nebulo/main/whitelist_test_unico.sh
		chmod +x whitelist.sh
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;
	clear)
		echo "Clean whitelist ..."
		: > "${PIHOLE_LOCATION}"/whitelist.txt
		echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
		pihole -g
		wait
		echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
		echo -e " ${TICK} \e[32m Done! \e[0m"
		;;

	*)
		echo
		echo "*******************************************"
		echo "*www.navigaresezapubblicita.altervista.org*"
		echo "*******************************************"

		exit 1
		;;
esac