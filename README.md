<<<<<<< HEAD
Выполнено ДЗ № 8
=======
Выполнено ДЗ № 9
>>>>>>> ansible-2

Основное ДЗ

В процессе сделано
<<<<<<< HEAD

    Создал инвентори файл и ansible.cfg. Управляли хостами с помошью Ansible

    Сравнил работу модулей command, shell и service.

    Создал базовый плейбук.

    Выполнил ansible app -m command -a 'rm -rf ~/reddit' и проверил ещё раз выполнение плейбука.
    Результат

    Изменилось состояние changed=1, так как директория отсутствовала и ansible склонировал её. Ниже показан результат.

Как запустить проект

    Выполнить команду terraform apply -auto-approve=true в директории terraform/stage
=======
Добавлен playbook, шаблоны, handlers, задачи на деплой кода и установку зависимостей
Добавлены отдельные playbooks для разных хостов
Добавлен site.yml объединяющий запуск playbook'ов

Провижининг в Packer
Добавлены packer_app.yml и packer_db.yml
Выполнен билд образов с использованием ansible
На основе созданных app и db образов запущено stage окружений

Как запустить проект
Убедитесь, что у вас создан бакет для хранения terraform state.
Запустить команду terraform get && terraform init && apply -auto-approve=true в директории terraform/stage для создания инстансов приложения и бд. В outputs будут адреса инстансов.
>>>>>>> ansible-2

Как проверить работоспособность
Перейти по ссылке http://external_ip:9292

<<<<<<< HEAD
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
=======
PR checklist
Выставил label с номером домашнего задания
>>>>>>> ansible-2
