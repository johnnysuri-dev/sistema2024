<?php 

require_once "conexion.php";

class ModeloUsuarios{


	static public function mdlMostrarUsuarios($tabla, $item, $valor){

		if($item != null){
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");
			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();
		}else{
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
			$stmt -> execute();
		return $stmt -> fetchAll();
		}
		$stmt -> close();
		$stmt = null;

	}
// registro de usuario

	static public function mdlIngresarUsuario($tabla,$datos){

		$stmt= Conexion::conectar()->prepare("INSERT INTO $tabla(nombre, usuario, password, perfil, foto) VALUES(:nombre, :usuario, :password, :perfil, :foto)");

		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
		$stmt->bindParam(":password", $datos["password"], PDO::PARAM_STR);		
		$stmt->bindParam(":perfil", $datos["perfil"], PDO::PARAM_STR);	
	    $stmt->bindParam(":foto", $datos["foto"], PDO::PARAM_STR);	
		if ($stmt->execute()) {
								return "ok";
							}else{
								return "Error";
							}					

			$stmt->close();
			$stmt =null;		
	}

// editar usuario
	static public function mdlEditarUsuario($tabla, $datos){
   
        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, password = :password, perfil = :perfil, foto = :foto WHERE usuario = :usuario");

        $stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
        $stmt -> bindParam(":password", $datos["password"], PDO::PARAM_STR);
        $stmt -> bindParam(":perfil", $datos["perfil"], PDO::PARAM_STR);
        $stmt -> bindParam(":foto", $datos["foto"], PDO::PARAM_STR);
        $stmt -> bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);

        if($stmt -> execute()){

            return "ok";
       
        }else{

            return "error";

        }

        $stmt -> close();

        $stmt = null;

    }

	    /*=============================================
    BORRAR USUARIO
    =============================================*/

    static public function mdlBorrarUsuario($tabla, $datos){

        $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

        $stmt -> bindParam(":id", $datos, PDO::PARAM_INT);
        if($stmt -> execute()){
            return "ok";   
        }else{
            return "error";
        }
        $stmt -> close();
        $stmt = null;
    }



}


 ?>