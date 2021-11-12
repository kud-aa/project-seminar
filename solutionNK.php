<?php

declare(strict_types = 1);

function getSumNK($input, int $N, int $K): ?int
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

    if (in_array(0, array_map('is_int', $input)))
    {
        return -1;
        die();
    }

    if ($K == 0)
    {
        $K = 1;
    }
    if ($N == 0)
    {
        $K = 1;
        $N = count($input);
    }
    $i = $K - 1;
    return array_sum(array_slice($input, $i, $N));
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

echo "\n";
echo "Tests: \n";
$input = [1,3,4,5,8,9];
echo getSumNK($input, 3, 2).PHP_EOL; //12
echo getSumNK($input, 0, 3).PHP_EOL; //30
echo getSumNK($input, 1, 0).PHP_EOL; //1
echo getSumNK($input, 1, 1).PHP_EOL; //1
echo getSumNK($input, 6, 2).PHP_EOL; //-1
echo getSumNK($input, -2, 2).PHP_EOL; //-1
echo getSumNK($input, 3, -1).PHP_EOL; //-1
$input = [1,3,4];
echo getSumNK($input, 1, 3).PHP_EOL; //4
$input = [-5=>1, 'cat'=>3, 2.0=>1];
echo getSumNK($input, 0, 0).PHP_EOL; //5
