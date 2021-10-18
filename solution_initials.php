<?php

declare(strict_types = 1);

function getInitials(string $FIO)
{
    // remove spaces before and after text
    $FIO = trim($FIO);

    // check if FIO is empty
    if (empty($FIO)){
        return null;
        exit();
    }

    $FIO =  mb_convert_case($FIO, MB_CASE_TITLE, "UTF-8");  // convert to utf8

    // convert from string to array
    $output = [];
    for ($i = 0; $i < mb_strlen($FIO, 'UTF-8'); $i++) {
        $array[] = mb_substr($FIO, $i, 1, 'UTF-8');
    }

    // add to output array all chars until meets first space 
    $n_space = 0;
    for ($i = 0; $i < count($array); $i++){
        if ($array[$i] == " "){
            $n_space++;
            \array_splice($array, 0, $i);
            break;
        }
        array_push($output, $array[$i]);
    }

    if($n_space == 0){
        return null;
        exit();
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

//echo getInitials("IvanDrago");
//echo "\n";
//echo getInitials("   мамин-сибиряк дмитрий наркисович");
//echo "\n";
//echo getInitials("Петров иван");
//echo "\n";
//echo getInitials("Маркес Габриэль Хосе Гарсиа");
//echo "\n";
//echo getInitials("Смирнов Теодор-Арсений");
//echo "\n";
//echo getInitials("Смирнов Теодор-Арсений Ларионов-Тришкин");
?>
