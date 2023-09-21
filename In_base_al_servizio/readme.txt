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
# Ora in base alle vostre personali esigenze e quindi al servizio/sito web scelto è possibile scegliere il comando da lanciare.
# Ad esempio per abilitare il servizio/sito web host_video:
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
# It is possible to launch the script indicate a relative option, for example:
# sudo ./whitelist_singole_abilitazioni.sh rai_streaming_e_app
# to enable streaming and mobile apps for italian rai tv
# to know all the options launch the command:
# sudo ./whitelist_singole_abilitazioni.sh *
# In the future it will most likely be necessary to update the script before launching it again, so it is present
# also the upgrade option:
# sudo ./whitelist_singole_abilitazioni.sh upgrade
# Last option is the complete deletion of the pihole whitelist. Be careful when executing this command as I repeat it will
# the complete deletion of the entire whitelist is your responsibility to make a backup first:
# sudo ./whitelist_single_enablements.sh clear
