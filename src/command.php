<?php

if (!isset($argv[1])) {
	echo 'Аргумент функции отсутствует!';
} else {
	$text = $argv[1];
	echo strrev(preg_replace('/[aeiou]/isu', '', $text));
}
