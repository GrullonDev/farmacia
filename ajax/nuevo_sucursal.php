<?php
        include('is_logged.php');

	if (empty($_POST['nombre'])) {
           $errors[] = "Sucursal vacía";
        } else if (empty($_POST['nombre'])){
			$errors[] = "Nombre de la sucursal vacía";
		}
                else if (
			!empty($_POST['nombre'])
		){
		require_once ("../config/db.php");
		require_once ("../config/conexion.php");

		$nombre=trim(mysqli_real_escape_string($con,(strip_tags($_POST["nombre"]))));
		$ruc=trim(mysqli_real_escape_string($con,(strip_tags($_POST["ruc"]))));
		$direccion=trim(mysqli_real_escape_string($con,(strip_tags($_POST["direccion"]))));
    $correo=mysqli_real_escape_string($con,(strip_tags($_POST["correo"])));
    $telefono=mysqli_real_escape_string($con,(strip_tags($_POST["telefono"])));
    $departamento=trim(mysqli_real_escape_string($con,(strip_tags($_POST["departamento"]))));
    $provincia=trim(mysqli_real_escape_string($con,(strip_tags($_POST["provincia"]))));
    $distrito=trim(mysqli_real_escape_string($con,(strip_tags($_POST["distrito"]))));
    $ubigeo=mysqli_real_escape_string($con,(strip_tags($_POST["ubigeo"])));
    $descripcion=mysqli_real_escape_string($con,(strip_tags($_POST["descripcion"])));

    $tienda=mysqli_query($con,"select * from sucursal ORDER BY  `sucursal`.`tienda` DESC ");
    $row1=mysqli_fetch_array($tienda);
    $tienda1=$row1["tienda"]+1;
    $sql="INSERT INTO sucursal (tienda,nombre,ruc,direccion,correo,telefono,foto,ubigeo,caja,dep_suc,pro_suc,dis_suc,descripcion_sucursal) VALUES ('$tienda1','$nombre','$ruc','$direccion','$correo','$telefono','logo.jpg','$ubigeo','0','$departamento','$provincia','$distrito','$descripcion')";
    $query_new_insert = mysqli_query($con,$sql);
			if ($query_new_insert){
				$messages[] = "Sucursal ha sido ingresado satisfactoriamente.";
			} else{
				$errors []= "Sucursal duplicada.";
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
