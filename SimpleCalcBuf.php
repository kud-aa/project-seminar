<?php

class SimpleCalcBuf {

    public float $result;

    function __construct(float $input = 0) {
        $this->result = $input;
        return $this;
    }

    public function add (float $a) {
        $this->result += $a;
        return $this;
    }

    public function multiply (float $a) {
        $this->result *= $a;
        return $this;
    }

    public function substract (float $a) {
        $this->result -= $a;
        return $this;
    }

    public function divide (float $a, int $degree = 2) {
        $this->result = number_format(($this->result / $a), $degree);
        return $this;
    }

    public function getResult() {
        return $this->result;
    }

}

#$a = new SimpleCalcBuf(10);
#echo $a->getResult(). "\n";
#echo $a->add(4.4)->getResult(). "\n";
#echo $a->substract(10.2)->getResult(). "\n";
#echo $a->multiply(2)->getResult(). "\n";
#echo $a-> divide(5, 1)->getResult(). "\n";

?>
