<?php
	include('is_logged.php');
	if (empty($_POST['mod_id'])) {
           $errors[] = "ID vacío";
        }else if (empty($_POST['mod_nombre'])) {
           $errors[] = "Nombre vacío";
        }else if (trim($_POST['mod_nombre'])=="") {
           $errors[] = "Nombre vacío";
           
        }  else if ($_POST['mod_estado']==""){
			$errors[] = "Selecciona el estado del proveedor";
		}  else if (
			!empty($_POST['mod_id']) &&
			!empty($_POST['mod_nombre']) &&
			$_POST['mod_estado']!="" 
		){
		require_once ("../config/db.php");
		require_once ("../config/conexion.php");
		$nombre=mysqli_real_escape_string($con,(strip_tags($_POST["mod_nombre"])));
		$telefono=mysqli_real_escape_string($con,(strip_tags($_POST["mod_telefono"])));
		$email=mysqli_real_escape_string($con,(strip_tags($_POST["mod_email"])));
		$direccion=mysqli_real_escape_string($con,(strip_tags($_POST["mod_direccion"])));
                $doc=mysqli_real_escape_string($con,(strip_tags($_POST["mod_doc"])));
                $tipo=mysqli_real_escape_string($con,(strip_tags($_POST["mod_tipo"])));
                if($tipo==2){
                    $doc1=$doc;
                    $dni=0;
                }
                if($tipo==1){
                    $doc1=0;
                    $dni=$doc;
                }
                $documento=$doc;
                
                $ven=mysqli_real_escape_string($con,(strip_tags($_POST["mod_ven"])));
                $departamento=mysqli_real_escape_string($con,(strip_tags($_POST["mod_departamento"])));
                $provincia=mysqli_real_escape_string($con,(strip_tags($_POST["mod_provincia"])));
                $distrito=mysqli_real_escape_string($con,(strip_tags($_POST["mod_distrito"])));
                $cuenta=mysqli_real_escape_string($con,(strip_tags($_POST["mod_cuenta"])));
                $estado=intval($_POST['mod_estado']);
		$id_cliente=intval($_POST['mod_id']);
		$sql="UPDATE clientes SET nombre_cliente='".$nombre."', telefono_cliente='".$telefono."', email_cliente='".$email."', direccion_cliente='".$direccion."', status_cliente='".$estado."', vendedor='".$ven."', departamento='".$departamento."', provincia='".$provincia."', distrito='".$distrito."', cuenta='".$cuenta."', documento='".$documento."' WHERE id_cliente='".$id_cliente."'";
		$query_update = mysqli_query($con,$sql);
			if ($query_update){
				$messages[] = "Proveedor ha sido actualizado satisfactoriamente.";
			} else{
				$errors []= "Proveedor duplicado.";
			}
		} else {
			$errors []= "Error desconocido.";
		}
		
		if (isset($errors)){
			
			?>
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>Error!</strong> 
					<?php
						foreach ($errors as $error) {
								echo $error;
							}
						?>
			</div>
			<?php
			}
			if (isset($messages)){
				
				?>
				<div class="alert alert-success" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						<strong>¡Bien hecho!</strong>
						<?php
							foreach ($messages as $message) {
									echo $message;
								}
							?>
				</div>
				<?php
			}

?>