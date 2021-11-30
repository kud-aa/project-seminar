<?php

function typesCounter (... $numbers) 
{
    return "params: ".var_export($numbers, true).PHP_EOL;
}

echo typesCounter(1, 'text', [1,2,3], true, new StdClass());
?>
