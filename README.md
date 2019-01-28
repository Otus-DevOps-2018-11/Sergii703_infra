Выполнено ДЗ № 8

Основное ДЗ

В процессе сделано

    Создал инвентори файл и ansible.cfg. Управляли хостами с помошью Ansible

    Сравнил работу модулей command, shell и service.

    Создал базовый плейбук.

    Выполнил ansible app -m command -a 'rm -rf ~/reddit' и проверил ещё раз выполнение плейбука.
    Результат

    Изменилось состояние changed=1, так как директория отсутствовала и ansible склонировал её. Ниже показан результат.

Как запустить проект

    Выполнить команду terraform apply -auto-approve=true в директории terraform/stage

PR checklist

Выставил label с темой домашнего задания

ansible-1

получаем ansible-playbook clone.yml

PLAY [Clone] *******************************************************************

TASK [Gathering Facts] *********************************************************
ok: [appserver]

TASK [Clone repo] **************************************************************
ok: [appserver]

PLAY RECAP *********************************************************************
appserver                  : ok=2    changed=0    unreachable=0    failed=0

changed=0

app -m command -a 'rm -rf ~/reddit'
ansible-playbook clone.yml

вывод

PLAY [Clone] *******************************************************************

TASK [Gathering Facts] *********************************************************
ok: [appserver]

TASK [Clone repo] **************************************************************
ok: [appserver]

PLAY RECAP *********************************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0

changed=1
