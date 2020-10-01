<?php

/**
 * Listado de tablas de BBDD
 */
function tablas(){
    return ['Books', 'Customers', 'Authors'];
}

/**
 *  Genera SELECT a partir del nombre
 */
function createSELECT($nombre_tabla){
    return $query_autores = 'SELECT * From '.$nombre_tabla;
}


/**
 * Conecta con la BBDD
 */
function conectar_con_bbdd(){
    $user_bbdd = 'user';
    $pass_bbdd = 'test';
    $nombre_bbdd = "myDb";
    $host = 'db';
    // Connexion de la base de datos
    $conn = mysqli_connect($host,  $user_bbdd, $pass_bbdd, $nombre_bbdd);
    //Devuelve la conexión
    return $conn;
}
/**
 * Cerramos la BBDD
 */
function cerrar_bbdd($conn){
    //Cerrar conexión
    mysqli_close($conn);
}

/**
 * Devuelve los Autores
 */
function obtenerAutores(){
    $query = createSELECT('Authors');
    $autores = [];
  // echo $query.'/n';
    try {
        //Conectar con la BBDD
        $conn = conectar_con_bbdd();
        $result = mysqli_query($conn,  $query);

        while($value = $result->fetch_array(MYSQLI_ASSOC)){
            //Si descomentamos 'print_r' y podemos ver los atributos de la tabla
            //print_r($value);
            $id = $value['Id'];
            //$name = $value['Name'];
            //$country = $value['Country'];
            $autores[$id] = $value;
        }
        /* Liberar el conjunto de resultados*/
        $result->close();
        cerrar_bbdd($conn);    
        
        return $autores;
    
    } catch (Exception $e) {
        echo 'Excepción capturada: ',  $e->getMessage(), "\n";
    }finally{
        return $autores;
    }
   
}


?>