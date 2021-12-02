<?php

declare(strict_types = 1);

function wordsCount (string $sourceString) : ?array
{

    // First convert string to UTF8
    $sourceString =  mb_strtolower(mb_convert_case($sourceString, MB_CASE_TITLE, "UTF-8"));

    // Remove all the punctuation marks
    $sourceString = preg_replace('/[[:punct:]]/', '', $sourceString);

    // Replace all the whitespaces (tabs, new lines, multiple spaces) by single space
    $sourceString = preg_replace('/[[:space:]]/', ' ', $sourceString);

    // The words are now separated by single spaces and can be splitted to an array
    $words_array = array_count_values(preg_split( "/[\n\r\t ]+/", $sourceString, 0, PREG_SPLIT_NO_EMPTY ));

    return $words_array;
}

//print_r(wordsCount("НАтуральный   Блондин"));
//echo "\n";
//print_r(wordsCount("string`` -- string1 просто стороКа просто"));
//echo "\n";
//print_r(wordsCount("Раз Два Три Четыре Пять
//                    Скажем без подвоха
//                    Раз Два Три Четыре Пять
//                    Жадность - это плохо"));
//echo "\n";
//print_r(wordsCount("Кот кот кОт оЛень"));
//echo "\n";
//print_r(wordsCount("Первый, второй. Первый-второй. Третий1"));
//echo "\n";
//print_r(wordsCount("___ natural beauTy"));

?>
