<?php

declare(strict_types = 1);

function getInitials(string $FIO)
{
    for ($i = 0; $i < mb_strlen($FIO, 'UTF-8'); $i++) {
        $array[] = mb_substr($FIO, $i, 1, 'UTF-8');
    }

    for ($i = 0; $i < count($array); $i++){
        if ($array[$i] == " "){
            \array_splice($array, 0, $i);
            break;
        }

        echo $array[$i];
    }

    echo " ";

    $n = 0;
    for ($i = 0; $i < count($array); $i++){
        if ($array[$i] == " "){ 
            $n = $i;
            echo $array[$n+1];
            echo ".";
        }
        if ($array[$i] == "-"){
            $n = $i;
            echo $array[$i];
            echo $array[$n+1];
            echo ".";
        }

    }

}

getInitials("мамин-сибиряк дмитрий наркисович");
echo "\n";
getInitials("Смирнов Теодор-Арсений");
?>
