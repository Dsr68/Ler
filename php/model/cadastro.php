<?php
class Cadastro{
    private $id;
    private $nome;
    private $sobrenome;
    private $email;
    private $senha1;
    private $senha2;

    public function setNome($nome){
        $this->nome = $nome;
    }

    public function setSobrenome($sobrenome){
        $this->sobrenome = $sobrenome;
    }

    public function setEmail($email){
        $this->email = $email;
    }

    public function setSenha1($senha1){
        $this->senha1 = $senha1;
    }

    public function setSenha2($senha2){
        $this->senha2 = $senha2;
    }


    public function getId(){
        return $this->id;
    }


    public function getNome(){
        return $this->nome;
    }

    public function getSobrenome(){
        return $this->sobrenome;
    }

    public function getEmail(){
        return $this->email;
    }

    public function getSenha1(){
        return $this->senha1;
    }

    public function getSenha2(){
        return $this->senha2;
    }

}
?>