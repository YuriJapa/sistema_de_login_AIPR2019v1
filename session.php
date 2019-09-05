<?php
//Iniciando a sessão
session_start();
//Conectando com o banco de dados
require_once 'configDB.php';

if(isset($_SESSION['nomeUsuario'])){
    echo "usuário logado!";
}else{
    //Kick
    header("location: index.php");
}