# Sergii703_infra
Sergii703 Infra repository

Подключение к someinternalhost в одну команду
$ ssh-agent bash

$ ssh-add -L
The agent has no identities.

$ ssh-add ~/.ssh/appuser
Identity added: /c/Users/Sergii/.ssh/appuser (/c/Users/Sergii/.ssh/appuser)

$ ssh -i ~/.ssh/appuser -J appuser@35.205.72.17 appuser@10.132.0.3
Welcome to Ubuntu 16.04.5 LTS (GNU/Linux 4.15.0-1025-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.

Last login: Tue Dec 25 17:32:31 2018 from 10.132.0.2
appuser@someinternalhost:~$

Подключение из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства
Добавляем\создаем в ~/.ssh/config


cat <<EOF>> ~/.ssh/config

Host someinternalhost
    
         Hostname  10.132.0.3
         user  appuser
         ProxyJump  bastion

Host bastion

         HostName  35.210.101.213
         User  appuser
         IdentityFile ~/.ssh/appuser
         ForwardAgent  yes
         RequestTTY  yes
EOF
