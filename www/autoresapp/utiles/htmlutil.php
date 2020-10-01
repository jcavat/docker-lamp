<?php
/**
 * Genera código HTML5
 */
    function html($body, $titulo = "Document", $bootstrap = true, $jquery = true){
        $ret = "";
        $ret .= "<!DOCTYPE html>";
        $ret .= "<html lang='es'>";
        $ret .= "<head>";
        if($bootstrap)
            $ret .= bootstrap();
        if($jquery)
            $ret .= jquery();
        $ret .= "<meta charset='UTF-8'>";
        $ret .= "<meta name='viewport' content='width=device-width, initial-scale=1.0'>";
        $ret .= "<title>$titulo</title>";
        $ret .= "</head>";
        $ret .= "<body>";
        $ret .=$body;
        $ret .= "</body>";
        $ret .= "</html>";
        return $ret;
    }
    /**
     * Devuelve cabeceras framework Bootstrap
     */
    function bootstrap(){
        $ret = "";
        $ret .= "<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>";
        $ret .= "<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>";
        return $ret;
    }
    /**
     * Devuelve cabecera jquery de Google
     */
    function jquery(){
        $ret = "";
        $ret .= "<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js'></script>";
        return $ret;
    }
    /**
     * Genera div
     */
    function div($content,$id='', $class=''){
        //@TODO
    }
    /**
     * Genera un tabla de HTML a partir de un diccionario(clave,valor) donde la clave es el id y valor un array de elemenos
     */
    function table($dictID_de_array, $class='table table-hover'){
        $ret = "";
        if(!is_null($dictID_de_array) & sizeof($dictID_de_array)>=1){
            //Obtengo todos las claves
            $aux = array_keys($dictID_de_array);
            //Obtengo todos los atributos 
            $atributos = array_keys($dictID_de_array[$aux[0]]);
            $ret .= "<table class='$class'>";
            $ret .= "<thead><tr>";
            foreach ($atributos as $atributo) {
                $ret .= "<th scope='col'>$atributo</th>";
            }
            foreach ($dictID_de_array as $registro) {
                $ret .= "<tr>";
                foreach($registro as $value){
                    $ret .= "<td>$value</td>";
                }
                $ret .= "</tr>";
            }
            $ret .= "<table class='$class'>";
            
   
            $ret .= "</table>";
        }else{
            $ret .= "<p>tabla vacia</p>";
        }
        return $ret;
    }

     /**
     * Genera un tabla de HTML a partir de un diccionario(clave,valor) donde la clave es el id y valor un array de elemenos
     */
    function tableAction($dictID_de_array, $class='table table-hover'){
        $ret = "";
        if(!is_null($dictID_de_array) & sizeof($dictID_de_array)>=1){
            //Obtengo todos las claves
            $aux = array_keys($dictID_de_array);
            //Obtengo todos los atributos 
            $atributos = array_keys($dictID_de_array[$aux[0]]);
            $ret .= "<table class='$class'>";
            $ret .= "<thead><tr>";
            foreach ($atributos as $atributo) {
                $ret .= "<th scope='col'>$atributo</th>";
            }
            foreach ($dictID_de_array as $id => $registro) {
                $ret .= "<tr>";
                foreach($registro as $value){
                    $ret .= "<td>$value</td>";
                }
                $index = array_keys($registro);
                $ret .= "<td><a href='obras.php?id=$id'><span class='glyphicon glyphicon-search'></span></td>";
                $ret .= "</tr>";
            }
            $ret .= "<table class='$class'>";
            
   
            $ret .= "</table>";
        }else{
            $ret .= "<p>tabla vacia</p>";
        }
        return $ret;
    }
?>


