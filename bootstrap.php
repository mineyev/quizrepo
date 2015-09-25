<?php
date_default_timezone_set('Europe/Moscow');
mb_internal_encoding('UTF-8');
define('APP_PATH', __DIR__);

define('SOURCE_PATH', APP_PATH .  '/src/');
define('VENDOR', APP_PATH .  '/vendor/');

require_once VENDOR . '/autoload.php';