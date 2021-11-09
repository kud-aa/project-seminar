<?php

declare(strict_types = 1);

function getSumNK($input, int $N, int $K): int
{
    if ($N < 0 || $K < 0)
    {
        return -1;
        die();
    } 
    if (empty($input))
    {
        return 0;
        die();
    }
    if (count($input) < $N + $K - 1)
    {
        return -1;
        die();
    }

    for ($check_index = 0; $check_index < count($input); $check_index++)
    {
        if(!is_int($input[$check_index]))
        {
            return -1;
            die();
        }
    } 

    if ($K == 0)
    {
        $K = 1;
    }
    if ($N == 0)
    {
        $last_index = count($input);
    }
    else
    {
        $last_index = $N + $K - 1;
    }

    $i = $K - 1;
    $sum = 0;
    for ($i; $i < $last_index; $i++)
    {
        if (is_int($input[$i]))
        {
            $sum = $input[$i] + $sum; 
        }
        else
        {
            return -1;
            die();
        }
    }
    return $sum;
}

echo getSumNK([1,3,4,5,8,9], 3, 2);
echo "\n";
echo getSumNK([1,3,4], 1, 3);
echo "\n";
echo getSumNK([1,2,3,4,5,6,7], 4, 3);
echo "\n";
echo getSumNK([1,2,3.0], 3, 1);
echo "\n";
echo getSumNK([1,2,3], 3, 3);
echo "\n";
echo getSumNK([1,2,3], -1, -12);
echo "\n";
echo getSumNK([], 1, 2);
echo "\n";
echo getSumNK([1,2,3,4,5,6], 4, 0);
echo "\n";
echo getSumNK([1,2,3,4,5,6], 0, 2);
echo "\n";
echo getSumNK([1,2,3,4,5,6], 0, 0);
echo "\n";
echo getSumNK([1,2,3,4,1.0,2], 3, 1);
