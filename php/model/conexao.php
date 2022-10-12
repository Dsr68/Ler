<?php
class Conexao{
    private static $instance;

    private function __construct(){

    } 

    public static function getConexao(){
        if(!isset(self::$instance)){
            self::$instance = new PDO('mysql:host=localhost;dbname=login', 'dalison', '1610');
        }
        return self::$instance; 

    }
}
?>