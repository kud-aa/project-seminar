<?php

function gettype_str ($value): string
{
    if (gettype($value) == 'double') return 'float';
    return gettype($value);
}

function typesCounter (... $arguments) 
{ 
    $array = array('boolean', 'integer', 'float', 'string', 'object', 'array');

    $nums = array();
    foreach ($array as $type)
    {
        $nums[$type] = 0;
    }

    foreach($arguments as $arg)
    {
        $type= gettype_str ($arg);
        if (array_key_exists($type, $nums))
            $nums[$type] += 1;
        else
            return null;
    }
    return $nums;
}

print_r(typesCounter('test', new StdClass, false));
echo "\n";
print_r(typesCounter(1, 3, 'test', 7, 'another string', 7.16, 1.2e3, 'hoho', 10, true));
echo "\n";
print_r(typesCounter("s", true, true));
echo "\n";
print_r(typesCounter('test', 1111, null));
echo "\n";
?>
