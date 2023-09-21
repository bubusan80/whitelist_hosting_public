# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY 
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# In Italian language: 
# Questo elenco (destinato a crescere nel tempo) viene redatto in base al servizio (oppure al sito web) che si vuole utilizzare.
# Viene pubblicato per evitare falsi positivi nelle liste usate sul pihole.
# Per l'installazione dello script saranno necessari i seguenti passaggi:
# Aprire il terminal sul raspberry o sul dispositivo dove avete installato il pihole.
# Rechiamoci in una cartella a piacere per scaricare il file, vi consiglio la cartella Downloads del proprio profilo.
# Nei passaggi che sto indicado, ho preso ad esempio il raspberry con RaspbianOS, quindi viene effettuato il comando per entrare nella relativa cartella:
# cd Downloads
# Ora effettuaimo il comando per scaricare lo script:
# wget -N https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/whitelist_singole_abilitazioni.sh
# Una volta scaricato è necessario dare un comando per rendere il file eseguibile:
# chmod u+x whitelist_singole_abilitazioni.sh
# Ora in base alle vostre personali esigenze e quindi al servizio/sito web scelto è possibile scegliere il comando da lanciare:
# Per abilitare il servizio/sito web host_video:
# sudo ./whitelist_singole_abilitazioni.sh host_video 
# ...
# per conoscere tutte le opzioni lanciare il comando:
# sudo ./whitelist_singole_abilitazioni.sh *
# In futuro molto propabilmente sarà necessario effettuare un aggiornamento allo script prima di lanciarlo nuovamente, è quindi presente 
# anche l'opzione upgrade:
# sudo ./whitelist_singole_abilitazioni.sh upgrade
# Ultima opzione è la cancellazione completa della whitelist del pihole, Attenzione ad eseguire questo comando in quanto ripeto effettuerà 
# la cancellazione completa di tutta la whitelist è vostro compito effettuare un backup prima:
# sudo ./whitelist_singole_abilitazioni.sh clear
# ==========================================================================================================================================
# In English language:
# This list (destined to grow over time) is drawn up based on the service (or website) you want to use.
# Comes to avoid false positives in used listings posted on the pihole.
# On raspberry or pc/server/etc. where the pihole is installed open the terminal
# check or go to the home directory of your profile
# use these commands to install the script:
# wget -N https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/whitelist_singole_abilitazioni.sh
# chmod +x whitelist_singole_abilitazioni.sh
# It is possible to launch the script indicate a relative option:
# for example:d
# sudo ./whitelist_singole_abilitazioni.sh rai_streaming_e_app
# to enable streaming and mobile apps for italian rai tv
# Here is the list of options to choose to use the script:
# host_video
# aliexpress_alibaba
# amazon_e_servizi_aws
# ampproject
# apple
# bootstrapcdn
# disneyplus_by_opendns
# eon_energia
# games_e_console
# google_chrome_dns
# google_pubblicita
# google_servizi
# hola_vpn
# iobit
# microsoft_pc_e_app_su_smartphone
# mozilla_firefox
# netflix
# operatore_tim_e_modem
# paypal
# paramountplus
# posteitaliane
# rai_streaming_e_app
# samsung_servizi
# sisal
# torrent_download
# utility_varie
# wisecleaner
# upgrade
# clear
