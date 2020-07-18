#!/bin/bash

if [ $USER != root ]; then
	echo "Voce precisa ser root"
	exit
fi

read -p "Oque vc deseja fazer? start ou stop: " result
cat <<!
	-----------------------------------------
		Codado por Say_Seven
		Só para os preguisoços
	-----------------------------------------
!

sleep 2
echo ""
service ssh $result; echo ""; echo "Serviço ssh $result !!"
service smbd $result; echo ""; echo "Serviço smbd $result !!" 
service rpcbind $result; echo ""; echo "Serviço rpcbind $result !!"
service bluetooth $result; echo ""; echo "Serviço bluetooth $result !!"
service privoxy restart; echo ""; echo "Serviço privoxy reiniciado!!"
service tor restart; echo ""; echo "Serviço tor reiniciado!!"
service redis-server $result; echo ""; echo "Serviço redis-server $result !!"
service acpid $result; echo ""; echo "Serviço acpid $result !!"
service postgresql restart; echo ""; echo "Serviço postgresql reiniciado!!"
service cups $result; echo ""; echo "Serviço cups $result !!"
echo ""; read -p "Voce deseja da start ou stop no service apache2: " apache
service apache2 $apache; echo ""; echo "Serviço apache2 $apache !!"
