<?php

declare(strict_types = 1);

function getInitials(string $FIO)
{
    $FIO =  mb_convert_case($FIO, MB_CASE_TITLE, "UTF-8");  // convert to utf8

    // convert from string to array
    $output = [];
    for ($i = 0; $i < mb_strlen($FIO, 'UTF-8'); $i++) {
        $array[] = mb_substr($FIO, $i, 1, 'UTF-8');
    }

    // add to output array all cahrs until meets first space 
    for ($i = 0; $i < count($array); $i++){
        if ($array[$i] == " "){
            \array_splice($array, 0, $i);
            break;
        }
        array_push($output, $array[$i]);
    }

    array_push($output, " ");                               // space between last name and first name

    // add to output initals
    for ($i = 0; $i < count($array); $i++){
        if ($array[$i] == " "){ 
            $n = $i;
            array_push($output, $array[$n+1]);
            array_push($output, ".");
        }
        if ($array[$i] == "-"){
            $n = $i;
            array_push($output, $array[$i]);
            array_push($output, $array[$n+1]);
            array_push($output, ".");
        }

    }
    // convert array from array to string
    $string_output = implode('',$output);
    return $string_output;

}


echo getInitials("мамин-сибиряк дмитрий наркисович");
echo "\n";
echo getInitials("Петров иван");
echo "\n";
echo getInitials("Маркес Габриэль Хосе Гарсиа");
echo "\n";
echo getInitials("Смирнов Теодор-Арсений");
echo "\n";

?>
