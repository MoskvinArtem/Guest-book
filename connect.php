<?php

$db = @mysqli_connect('localhost', 'root', '', 'gb') or die('Ошибка подключения к базе данных');
mysqli_set_charset($db, 'utf8') or die('Не установлена кодировка');