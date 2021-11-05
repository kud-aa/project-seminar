<?php

function getSumNK($input, $N, $K)
{
    $last_index = $N + $K - 1;
    $sum = 0;
    $i = $K - 1;
    for($i; $i < $last_index; $i++)
    {
       $sum = $input[$i] + $sum; 
    }
    return $sum;
}

echo getSumNK([1,3,4,5,8,9], 3, 2);
echo "\n";
echo getSumNK([1,3,4], 1, 3);
echo "\n";
echo getSumNK([1,2,3,4,5,6,7], 4, 3);
