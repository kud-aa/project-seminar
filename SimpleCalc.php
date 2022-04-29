<?php

class SimpleCalc {

    public static function add (float $a, float $b):float {
        return $a + $b;
    }

    public static function multiply (float $a, float $b):float {
        return $a * $b;
    }

    public static function substract (float $a, float $b):float {
        return $a - $b;
    }

    public static function divide (float $a, float $b):float {
        return number_format(($a / $b), 2);
    }

}

#echo SimpleCalc::add(1.0,2.0). "\n";
#echo gettype(SimpleCalc::add(1.0,2.0)). "\n";
#echo SimpleCalc::multiply(1.0,2.0). "\n";
#echo gettype(SimpleCalc::multiply(1.0,2.0)). "\n";
#echo SimpleCalc::substract(1.0,2.0). "\n";
#echo gettype(SimpleCalc::substract(1.0,2.0)). "\n";
#echo SimpleCalc::divide(1.0,3.0). "\n";
#echo gettype(SimpleCalc::divide(1.0,3.0)). "\n";
?>
