<?php

declare(strict_types = 1);

function wordsCount (string $sourceString)
{

    $sourceString =  mb_strtolower(mb_convert_case($sourceString, MB_CASE_TITLE, "UTF-8"));

    $sourceString = str_replace(array('-', ',', '.' , ';', ':', '"', '`'), '', $sourceString);

    $sourceString = preg_replace('/[[:space:]]/', ' ', $sourceString);

    $words_array = array_count_values(preg_split( "/[\n\r\t ]+/", $sourceString, 0, PREG_SPLIT_NO_EMPTY ));

    return $words_array;
}

print_r(wordsCount("НАтуральный   Блондин"));
echo "\n";
print_r(wordsCount("string`` -- string1 просто стороКа просто"));
echo "\n";
print_r(wordsCount("Раз Два Три Четыре Пять
Скажем без подвоха
Раз Два Три Четыре Пять
Жадность - это плохо"));
?>