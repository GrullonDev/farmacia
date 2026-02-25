<?php
	include('is_logged.php');
	if (empty($_POST['mod_id'])) {
           $errors[] = "ID vacío";
        } else if (empty($_POST['mod_nombre'])){
			$errors[] = "Nombre de la sucursal vacía";
		}
                else if (

			!empty($_POST['mod_nombre'])
		){
		require_once ("../config/db.php");
		require_once ("../config/conexion.php");
		$nombre=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_nombre"]))));
		$ruc=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_ruc"]))));
		$direccion=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_direccion"]))));
    $correo=mysqli_real_escape_string($con,(strip_tags($_POST["mod_correo"])));
    $telefono=mysqli_real_escape_string($con,(strip_tags($_POST["mod_telefono"])));
    $ubigeo=mysqli_real_escape_string($con,(strip_tags($_POST["mod_ubigeo"])));

    $departamento=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_departamento"]))));
    $provincia=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_provincia"]))));
    $distrito=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_distrito"]))));
		$descripcion=trim(mysqli_real_escape_string($con,(strip_tags($_POST["mod_descripcion"]))));

		$id_sucursal=$_POST['mod_id'];
		$sql="UPDATE sucursal SET nombre='".$nombre."',ruc='".$ruc."',dep_suc='".$departamento."',pro_suc='".$provincia."',dis_suc='".$distrito."',direccion='".$direccion."',correo='".$correo."',telefono='".$telefono."',ubigeo='".$ubigeo."', descripcion_sucursal='".$descripcion."' WHERE id_sucursal='".$id_sucursal."'";
		$query_update = mysqli_query($con,$sql);
			if ($query_update){
				$messages[] = "Sucursal ha sido actualizado satisfactoriamente.";
			} else{
                            $errors []= "Error de duplicidad.";
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
