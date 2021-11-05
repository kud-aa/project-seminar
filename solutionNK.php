<?php

function getSumNK($input, $N, $K)
{
    for($K = 1; $K < $N + $K - 1; $K++)
    {
       $sum = $input[$K] + $sum; 
    }
}

echo getSumNK([1,3,4,5,8,9], 3, 2);

?>
