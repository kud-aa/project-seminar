# Контрольная работа 5.1 Приложение для работы с базой данных

Добавление ключа от stundents к groups

`ALTER TABLE `students` MODIFY `grid` int(10) UNSIGNED NOT NULL;
ALTER TABLE `students`
    ADD FOREIGN KEY (`grid`) REFERENCES `groups`(`grid`);
ALTER TABLE `students`
    ADD INDEX (`grid`);`

Добавление ключа от groups к specialities

`ALTER TABLE `groups`
    ADD FOREIGN KEY (`speciality_id`) REFERENCES `specialities`(`speciality_id`);
ALTER TABLE `groups`
    ADD INDEX (`speciality_id`);`
