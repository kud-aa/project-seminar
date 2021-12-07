<?php

function typesCounter (... $arguments) : ?array
{ 
    $bool_num = 0;
    $int_num = 0;
    $float_num = 0;
    $str_num = 0;
    $obj_num = 0;
    $arr_num = 0;

    foreach($arguments as $arg)
    {
        $type= gettype($arg);
        switch($type)
        {
        case 'boolean':
            $bool_num++;
            break;
        case 'integer':
            $int_num++;
            break;
        case 'double':
            $float_num++;
            break;
        case 'string':
            $str_num++;
            break;
        case 'object':
            $obj_num++;
            break;
        case 'array':
            $arr_num++;
            break;
        default:
            return null;
            break;
    }

    $array = array(
        'boolean' => $bool_num ,
        'integer' => $int_num,
        'float' => $float_num,
        'string' => $str_num,
        'object' => $obj_num,
        'array' => $arr_num
    );

    return $array;
}

//print_r(typesCounter('test', new StdClass, false));
//echo "\n";
//print_r(typesCounter(1, 3, 'test', 7, 'another string', 7.16, 1.2e3, 'hoho', 10, true));
//echo "\n";
//print_r(typesCounter("s", true, true));
//echo "\n";
//print_r(typesCounter('test', 1111, null));
//echo "\n";
?>
