<?php

class ClassCounter {

    private int $CallNum = 0;
    private static int $ObjectsNum = 0;

    public function __construct()
    {
        ++self::$ObjectsNum;
    }

    public function __destruct()
    {
        --self::$ObjectsNum;
    }

    public function __call($name, $arguments) {
        if ($name = 'callMethod' )
            echo 'hello my nword';
    }

    public static function getObjectsNum(): int {
        return self::$ObjectsNum;
    }

    public static function getMethodCallNum(): int {
    }
}

$a = new ClassCounter();
echo ClassCounter::getObjectsNum().PHP_EOL; // 1
#$a->callMethod();
#echo ClassCounter::getMethodCallNum().PHP_EOL; //1
#$a->callMethod();
#echo ClassCounter::getMethodCallNum().PHP_EOL; //2
$b = new ClassCounter();
echo ClassCounter::getObjectsNum().PHP_EOL; // 2
#$b->callMethod();
#echo ClassCounter::getMethodCallNum().PHP_EOL; //3
unset( $a );
echo ClassCounter::getObjectsNum().PHP_EOL;

?>
