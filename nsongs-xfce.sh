#!/bin/bash
#########################################################
#    Script criado para automatizar a instalação        #
#  e configuração de sons no linux com ambientes xfce   #
#           Desenvolvido por:  Nilsonlinux              #
#########################################################

# Variáveis
## Colors
C='\033[1;36m'
G='\033[1;32m'
R='\033[1;31m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
RE='\033[0m'
a='\033[1;33m' # Amarelo
p='\033[0;35m' # Purple
v='\033[0;32m' #Verde
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
version='20200408'
spath="$( cd "$( dirname $0 )" && pwd )"
############################################################
# clipdvs Logo
logo () {
  clear
  echo -e "${b}${g}                                                                                                     
 _   _   ____   ___  _   _  ____ ____  
| \ | | / ___| / _ \| \ | |/ ___/ ___| 
|  \| | \___ \| | | |  \| | |  _\___ \ 
| |\  |_ ___) | |_| | |\  | |_| |___) |
|_| \_(_)____/ \___/|_| \_|\____|____/ 
   ®${enda}
 ${c}Script para instalação do ${endc} ${r}Nsongs${endc}
                   ${r}Dev: Nilsonlinux${endc}"
    echo
}

# Exit Codig
nsongsexit () {
  logo
  echo -e " Obrigado por utilizar o ${b}Nsongs${enda}
 Para mais informações visite o repositório oficial:
 ${b}==>> ${bu}https://github.com/nilsonlinux/Nsongs${enda}"
  echo && sleep 1
  exit
}
###############################################################################
nsongs () {
  logo
  echo -e " ${y}Você irá instalar o Nsongs${endc}" && echo
  echo -e " ${bu}Tudo será configurado automaticamente.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Iniciando${endc} ${y}Instalação${endc}"; sudo apt install sox && sudo mkdir /usr/share/sounds/nsongs/ && cd nsongs && sudo cp * /usr/share/sounds/nsongs/ ; saidacomando ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; nsongs ;;
  esac
}
###############################################################################
# Comando executado
saidacomando () {
    echo && echo -e "Você executou a instalação do${b}$1${enda}."
    echo -e " Volte para o menu anterior."
    echo && echo -e " ${y}Digite Enter para retornar.${endc}"
    read input ;
}
#########################################################
# Menu principal
while :
do
logo
echo -e "         ${b}[ NSONGS ]${enda}"echo -e "
"
echo -e $B"        [$R"01"$B]$G Instalar$P"
echo -e $B"        --------------------------$B"
echo -e $B"        [$R"0"$B]$G Fechar o script"
echo
echo -en " Digite a opção: "
read option
case $option in
1) nsongs ;;
0) nsongsexit ;;
*) echo -e " \"$option\" ${r}Opção inválida!${endc}"; sleep 1 ;;
esac
done
#© 2020 Nilsonlinux
