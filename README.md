Выполнено ДЗ № 9

Основное ДЗ

В процессе сделано
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

Как проверить работоспособность
Перейти по ссылке http://external_ip:9292

PR checklist
Выставил label с номером домашнего задания
