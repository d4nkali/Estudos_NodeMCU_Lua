# Como Instalar o FirmWare NodeMCU Lua na ESP8266

1) Construa o FirmWare:

Para começar a usar na **ESP8266**. Entre em [NodeMCU build](https://nodemcu-build.com/); digite algum endereço de email em *Your email*; no *Select branch to build from*, selecione a branch **release**; e selecione as bibliotecas que deseja usar; clique em *Start your build*; apos alguns minutos, ira aparecer o download do seu firmware.

#

2) Instale o **Python** (caso não tenha):

O **NodeMCU** é uma implementação do **Lua** e para usar a ferramenta de instalar o firmware, irá precisar do Python instalado no seu computador. Você pode baixar a versão mais recente do [Python para Windows](https://www.python.org/downloads/windows/) ou do [Python para Linux](https://python.org.br/instalacao-linux/).

#


3) Instale as ferramenta `esptool.py`:

Você precisará das ferramentas para gravar o firmware na placa. Para **ESP8266**, você pode usar o `esptool.py`.

Para instalar o `esptool.py` no Windows, abra o prompt de comando (cmd) e no Linux, abra o seu terminal e execute o seguinte comando (você pode precisar usar *pip3* em vez de pip dependendo da sua configuração):

`pip install esptool.py` ou `pip install esptool`

#

4) Limpe a placa:

Antes de instalar o **NodeMCU**, certifique de que a sua **ESP8266** esteja sem codigo, para isso no Windows execute o seguinte codigo para ESP8266 (substitua x pela porta onde esta conectada a placa):

`esptool --port COMx erase_flash`

No linux:

`esptool.py --port /dev/ttyUSBx erase_flash`

#

5) Grave o FirmWare na placa:

Conecte a placa ao seu computador via USB e abra o prompt de comando ou terminal.

Para **ESP8266**, use o seguinte comando (substitua COMx/ttyUSBx pela porta à qual sua placa está conectada e "esp8266-firmware".bin pelo nome do arquivo `.bin` que você baixou):

`esptool --port COMx --baud 115200 write_flash --flash_size=detect 0 "esp8266-firmware".bin`

No terminal do Linux:

`esptool.py --port /dev/ttyUSBx --baud 115200 write_flash --flash_size=detect 0 "esp8266-firmware".bin`

#

6) Instale uma IDE :

Após gravar o **NodeMCU** na placa, baixe uma IDE com suporte ao NodeMcu Lua como a [ESPlorer](https://github.com/4refr0nt/ESPlorer).

Agora você deve ter o **NodeMCU Lua** instalado e funcionando na sua placa **ESP8266** no Windows ou Linux. Você pode começar a programar em Python na placa e aproveitar todas as funcionalidades do Lua.