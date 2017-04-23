#!/bin/bash
# Função: Alterar o arquivo de configuração do bashrc para a configuração da foto
# Desenvolvedor: Yuri Juliano
# SO: Debian 8

if [[ $1 == "--help" ]]
then
	echo -e "\033[01;34m-------------------
*     H E L P     *
-------------------\033[01;00m

\033[01;35mExemplo de uso:\033[01;00m

\033[01;36m1)\033[01;00m Para adicionar configuração ao usuário \033[01;32m`whoami`\033[01;00m digite: $0
\033[01;36m2)\033[01;00m Para adicionar configuração ao usuário \033[01;31mroot\033[01;00m digite: \033[05;01;32msudo su\033[01;00m, $0"
echo
else
	sleep 1;clear;sleep 1
echo -e "\033[01;35m----------------
   B R C v1.0
----------------\033[01;00m";echo;sleep 0.50
	us(){
		echo -e "\033[01;34m[+]\033[01;00m Aguarde..."
		sleep 0.70
		cp $HOME/.bashrc /$HOME/bkp_bashrc
		if [[ $? == 0 ]]
		then
			rm $HOME/.bashrc
			if [[ $? == 0 ]]
			then
				cp .bashrc /$HOME/.bashrc
				if [[ $? == 0 ]]
				then
					rm $HOME/.bashrc
					if [[ $? == 0 ]]
					then
						cp .bashrc /$HOME/.bashrc
						if [[ $? == 0 ]]
						then
							echo -e "\033[01;34m[*]\033[01;00m Sucesso!"
							sleep 0.70
							echo -e "\033[01;34m[*]\033[01;00m Backup:\033[01;00m "$HOME/bkp_bashrc
							echo -e "\033[01;34m[*]\033[01;00m Execute um novo terminal!"
							sleep 0.70
						else
							echo -e "\033[01;31m[!]\033[01;00m OPS! Algo deu errado!"
						fi
					else
						echo -e "\033[01;31m[!]\033[01;00m OPS! Algo deu errado!"
					fi
				else
					echo -e "\033[01;31m[!]\033[01;00m OPS! Algo deu errado!"
				fi
			else
				echo -e "\033[01;31m[!]\033[01;00m OPS! Algo deu errado!"
			fi
		else
			echo -e "\033[01;31m[!]\033[01;00m OPS! Algo deu errado!"
		fi
	}
	us
fi
