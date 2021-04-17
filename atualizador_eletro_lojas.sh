 #!/bin/bash
  #####################################################################################
  #### SUPORTE REGIONAL - SANTA INÊS - MA
  #### Nilsonlinux
  export DIR="$(dirname "$(readlink -f "$0")")"
  IPSERV='192.168'
  OPEN="play $DIR/sounds-alert/window-new.oga"
  CLOSE="play $DIR/sounds-alert/window-close.oga"
  ERRO="play $DIR/sounds-alert/erro.oga"
  CONECTADO="play $DIR/sounds-alert/ok.oga"
  UPDATE="wget --tries=02 -T 01 -O /tmp/versao.deb http://192.168.3.122/versao.deb && dpkg -i /tmp/versao.deb && reboot"
  #####################################################################################
  ${OPEN} | while true
  do
      FORMULARY=$(yad --center --width=380 \
          --window-icon="gtk-execute" --item-separator=","   \
          --title "ATUALIZAÇÃO (ELETRO - LOJAS)" \
          --form \
          --text="
01 	↺ 	ELETRO PRESIDENTE DRUTRA
02 	↺ 	ELETRO SANTA INÊS
03 	↺ 	ELETRO SANTA LUZIA
04 	↺ 	ELETRO PEDREIRAS 
05 	↺ 	ELETRO LAGO DA PEDRA 
06 	↺ 	ELETRO BACABAL
07 	↺ 	ELETRO COROATÁ
08 	↺ 	ELETRO TIMON
09 	↺ 	ELETRO VIANA
10 	↺ 	ELETRO SÃO MATEUS
11 	↺ 	ELETRO MATEUS PAISSANDU
12 	↺ 	ELETRO COROATÁ 2
13 	↺ 	ELETRO PIRIPIRÍ
14 	↺ 	ELETRO BARREIRINHAS
15 	↺ 	ELETRO CODÓ 2
16 	↺ 	ELETRO ITAPECURÚMIRIM 
17 	↺ 	ELETRO MATEUS PINHEIRO
18 	↺ 	ELETRO CODÓ SÃO SEBASTIÃO
19 	↺ 	ELETRO MATEUS KENNEDY
20 	↺ 	ELETRO BURITICUPU 
21 	↺ 	ELETRO PRES. DUTRA II
22 	↺ 	ELETRO VARGEM GRANDE
23 	↺ 	ELETRO VITORINO FREIRI
24 	↺ 	ELETRO MATEUS CEASA"  \
     --button="CANCELAR":1 --button="INICIAR ATUALIZAÇÃO":0)
      [ $? != 0 ] && exit
########################################################
(
tempoinicial=`date +%s`
${CONECTADO} | echo "INICIANDO COMANDO ATUALIZAÇÃO ⌛️" ; sleep 1
echo "----------------------------------------------" ; sleep 1
# loja 55 #################################################################################################
	echo "Atualizando loja 55..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.55.122 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.55.122 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.55.122 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.55.123 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.55.123 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.55.123 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.55.124 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.55.124 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.55.124 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 65 #################################################################################################
	echo "Atualizando loja 65..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.65.120 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.65.120 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.65.120 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.65.122 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.65.122 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.65.122 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
# loja 68 #################################################################################################
	echo "Atualizando loja 68..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.68.105 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.68.105 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.68.105 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.68.123 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.68.123 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.68.123 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""	
echo "----------------------------------------------------------------"
# loja 69 #################################################################################################
	echo "Atualizando loja 69..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.69.120 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.69.120 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.69.120 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.69.121 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.69.121 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.69.121 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.69.122 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.69.122 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.69.122 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""	
echo "----------------------------------------------------------------"
# loja 131 #################################################################################################
	echo "Atualizando loja 131..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.131.120 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.131.120 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.131.120 Offline - (NÃO ATUALIZOU) 🔴️"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.131.122 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.131.122 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.131.122 Offline - (NÃO ATUALIZOU) 🔴️"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.131.125 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.131.125 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.131.125 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""	
echo "----------------------------------------------------------------"
# loja 163 #################################################################################################
	echo "Atualizando loja 163..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.37.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.37.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.37.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.37.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.37.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.37.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.37.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.37.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.37.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 164 #################################################################################################
	echo "Atualizando loja 164..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.166.110 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.166.110 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.166.110 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.166.111 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.166.111 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.166.111 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.166.112 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.166.112 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.166.112 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""	
echo "----------------------------------------------------------------"
# loja 165 #################################################################################################
	echo "Atualizando loja 165..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.167.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.167.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.167.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.167.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.167.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.167.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.167.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.167.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.167.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 170 #################################################################################################
	echo "Atualizando loja 170..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.168.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.168.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.168.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.168.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.168.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.168.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.168.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.168.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.168.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 172 #################################################################################################
	echo "Atualizando loja 172..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.213.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.213.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.213.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.213.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.213.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.213.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.213.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.213.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.213.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 173 #################################################################################################
	echo "Atualizando loja 173..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.191.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.191.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.191.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.191.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.191.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.191.102 Offline - (NÃO ATUALIZOU)_🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.191.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.191.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.191.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 174 #################################################################################################
	echo "Atualizando loja 174..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.198.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.198.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.198.102 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.198.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.198.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.198.103 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.198.104 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.198.104 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.198.104 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 175 #################################################################################################
	echo "Atualizando loja 175..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.182.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.182.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.182.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.182.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.182.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.182.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.182.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.182.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.182.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 176 #################################################################################################
	echo "Atualizando loja 176..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.185.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.185.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.185.102 Offline - (NÃO ATUALIZOU)"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.185.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.185.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.185.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 177 #################################################################################################
	echo "Atualizando loja 177..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.178.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.178.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.178.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.178.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.178.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.178.103 Offline - (NÃO ATUALIZOU) 🔴"
fi 
# loja 178 #################################################################################################
#	 echo "Atualizando loja 178..."
#if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.101 "$UPDATE"; then
# echo "TERMINAL IP - 192.168.178.101 ATUALIZADO"
#else 
# echo "TERMINAL IP 192.168.178.101 Offline - (NÃO ATUALIZOU)"
#fi
#echo ""
###########
#if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.102 "$UPDATE"; then
# echo "TERMINAL IP - 192.168.178.102 ATUALIZADO"
#else 
# echo "TERMINAL IP 192.168.178.102 Offline - (NÃO ATUALIZOU)_"
#fi 
#echo ""
###########
#if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.178.103 "$UPDATE"; then
# echo "TERMINAL IP - 192.168.178.103 ATUALIZADO"
#else 
# echo "TERMINAL IP 192.168.178.103 Offline - (NÃO ATUALIZOU)_"
#fi 
# loja 182 #################################################################################################
echo ""
echo "----------------------------------------------------------------"
	echo "Atualizando loja 182..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.184.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.184.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.184.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.184.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.184.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.184.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.184.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.184.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.184.103 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo "----------------------------------------------------------------"
# loja 183 #################################################################################################
	echo "Atualizando loja 183..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.204.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.204.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.204.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.204.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.204.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.204.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.204.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.204.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.204.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 188 #################################################################################################
#	 clear
#	 echo "Atualizando loja 188..."
#	 echo ""
#    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.204.101 "$UPDATE"
#    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.204.102 "$UPDATE"
#    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.204.103 "$UPDATE"

# loja 189 #################################################################################################
	echo "Atualizando loja 189..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.211.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.211.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.211.102 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.211.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.211.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.211.103 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.211.104 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.211.104 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.211.104 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 192 #################################################################################################
	echo "Atualizando loja 192..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.214.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.214.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.214.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.214.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.214.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.214.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.214.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.214.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.214.103 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
# loja 196 #################################################################################################
	echo "Atualizando loja 196..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.212.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.212.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.212.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.212.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.212.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.212.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
# loja 602 #################################################################################################
	echo "Atualizando loja 602..."
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.141.101 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.141.101 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.141.101 Offline - (NÃO ATUALIZOU) 🔴"
fi
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.141.102 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.141.102 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.141.102 Offline - (NÃO ATUALIZOU) 🔴"
fi 
echo ""
echo "----------------------------------------------------------------"
###########
if sshpass -p 1 ssh -o "ConnectTimeout=5" -o "StrictHostKeyChecking no" root@192.168.141.103 "$UPDATE"; then
 echo "TERMINAL IP - 192.168.141.103 ATUALIZADO 🟢"
else 
 echo "TERMINAL IP 192.168.141.103 Offline - (NÃO ATUALIZOU) 🔴"
fi 
sleep 1
echo "Concluíndo..." ; sleep 1
sleep 1
echo "Feito! Terminais atualizados e reiniciados" ; sleep 1
echo
echo "----------------------------------------------------------------"
echo "----------------------------------------------------------------"
echo "----------------------------------------------------------------"
echo "---------------- COMANDO FINALIZADO COM SUCESSO ----------------"
echo "----------------------------------------------------------------"
echo "----------------------------------------------------------------"
echo "-- By: Nilsonlinux ---------------------------------------------"
tempofinal=`date +%s`
soma=`expr $tempofinal - $tempoinicial`
resultado=`expr 10800 + $soma`
tempo=`date -d @$resultado +%H:%M:%S`
echo
${CONECTADO} | echo "🕠 Tempo de atualização: $tempo "
) | yad --text-info --window-icon "audio-x-generic.png" --title "Informação de processo de atualização. Terminais" --center --height 500 --width 850 --tail --margins 4 --button="gtk-close"
################################################
      break
  done
################################################
${CLOSE}
