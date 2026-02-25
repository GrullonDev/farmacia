<?php
include('is_logged.php');
require_once("../config/db.php");
require_once("../config/conexion.php");
$session_id = session_id();
$tienda1 = $_SESSION['tienda'];
$action = 0;
if ($action == 0) {
        $q = trim(mysqli_real_escape_string($con, (strip_tags($_REQUEST['barra']))));

        if ($q != "") {
                //Primera opcion
                $rr = mysqli_query($con, "SELECT * FROM products where barras='$q'");
                $row1 = mysqli_fetch_array($rr);
                if ($row1) {
                        $id_producto = $row1['id_producto'];
                        $precio = $row1['precio_producto'];
                        $stock = $row1["b$tienda1"];

                        $count_query = mysqli_query($con, "SELECT count(*) AS numrows FROM tmp where id_producto='$id_producto' and session_id='$session_id'");
                        $row = mysqli_fetch_array($count_query);
                        $numrows = $row['numrows'];

                        if ($numrows == 0 and $id_producto > 0) {
                                // Producto nuevo en el carrito: insertar con cantidad 1
                                $insert_tmp = mysqli_query($con, "INSERT INTO tmp (id_producto,cantidad_tmp,precio_tmp,session_id,tienda) VALUES ('$id_producto','1','$precio','$session_id','$stock')");
                        } else if ($numrows > 0 and $id_producto > 0) {
                                // Producto ya existente en el carrito: sumar 1 a la cantidad
                                $update_tmp = mysqli_query($con, "UPDATE tmp SET cantidad_tmp=cantidad_tmp+1 WHERE id_producto='$id_producto' and session_id='$session_id'");
                        }
                }
        }

}
?>