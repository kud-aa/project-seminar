<?php

declare(strict_types = 1);

function getBMi(int $height, float $weight)
{

    if ($height <= 10 || $height >= 300)
    {
        return null;
    }
    elseif ($weight <= 1.0 || $weight >= 300.0)
    {
        return null;
    }
    else
    {
        return round((float)( $weight / ((($height * 10 ** (-2)) ** 2))),2);
    }

}

?>

