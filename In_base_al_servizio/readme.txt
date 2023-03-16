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
# Sul raspberry o sul pc/server/etc. dove è installato il pihole aprire il terminale verificare o andare sulla home del proprio profilo
# Installazione script:
# Aprire il terminal su raspberry o sul dispositivo dove avete installato il pihole
# Rechiamoci in una cartella a piacere per scaricare il file, consiglio la Downloads del proprio profilo prima di scaricare il file nel mio esempio effettuato sul raspberry effettueremo il comando per entrare nella relatica cartella:
# cd Downloads
# Ora effettuaimo il comando per scaricare lo script:
# wget -N https://raw.githubusercontent.com/bubusan80/whitelist_hosting_public/main/In_base_al_servizio/whitelist_singole_abilitazioni.sh
# Una volta scaricato è necessario dare un comando per rendere il file eseguibile:
# chmod u+x script.sh
# Ora in base alle vostre personali esigenze e quindi al servizio/sito web scelto inserire nella whitelist del pihole è possibile scegliere il comando da lanciare.
# Per abilitare il servizio/sito web host_video:
# sudo ./whitelist_singole_abilitazioni.sh host_video
# Per abilitare il servizio/sito web host_video:
# sudo ./whitelist_singole_abilitazioni.sh host_video 
# Per abilitare il servizio/sito web aliexpress_alibaba eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh aliexpress_alibaba
# Per abilitare il servizio/sito web amazon_e_servizi_aws eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh amazon_e_servizi_aws
# Per abilitare il servizio/sito web ampproject eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh ampproject
# Per abilitare il servizio/sito web apple eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh apple
# Per abilitare il servizio/sito web bootstrapcdn eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh bootstrapcdn
# Per abilitare il servizio/sito web disneyplus_by_opendns eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh disneyplus_by_opendns
# Per abilitare il servizio/sito web eon_energia eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh eon_energia
# Per abilitare il servizio/sito web games_e_console eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh games_e_console
# Per abilitare il servizio/sito web google_chrome_dns eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh google_chrome_dn
# Per abilitare il servizio/sito web google_servizi eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh google_servizi
# Per abilitare il servizio/sito web iobit eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh iobit
# Per abilitare il servizio/sito web microsoft_pc_e_app_su_smartphone eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh microsoft_pc_e_app_su_smartphone
# Per abilitare il servizio/sito web mozilla_firefox eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh mozilla_firefox
# Per abilitare il servizio/sito web netflix eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh netflix
# Per abilitare il servizio/sito web operatore_tim_e_modem eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh operatore_tim_e_modem
# Per abilitare il servizio/sito web paypal eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh paypal
# Per abilitare il servizio/sito web rai_streaming_e_app eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh rai_streaming_e_app
# Per abilitare il servizio/sito web samsung_servizi eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.shsamsung_servizi
# Per abilitare il servizio/sito web sisal eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh sisal
# Per abilitare il servizio/sito web torrent_download eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh torrent_download
# Per abilitare il servizio/sito web utility_varie eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh utility_varie
# Per abilitare il servizio/sito web wisecleaner eseguire il seguente comando:
# sudo ./whitelist_singole_abilitazioni.sh web wisecleaner
# In futuro molto propabilmente sarà necessario effettuare un aggiornamento allo script prima di lanciarlo nuovamente, è quindi presente anche l'opzione upgrade:
sudo ./whitelist_singole_abilitazioni.sh upgrade
# Ultima opzione è la cancellazione completa della whitelist del pihole, Attenzione ad eseguire questo comando in quanto ripeto effettuerà la cancellazione completa di tutta la whitelist è vostro compito effettuare un backup prima:
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
# google_servizi
# iobit
# microsoft_pc_e_app_su_smartphone
# mozilla_firefox
# netflix
# operatore_tim_e_modem
# paypal
# rai_streaming_e_app
# samsung_servizi
# sisal
# torrent_download
# utility_varie
# wisecleaner
# upgrade
# clear
