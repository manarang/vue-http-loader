<?php
require_once ("source.php");

 $data = array();

 $id=$_POST['id'];

 $stm=$pdo->query("select * from foto where id=$id");
 $row=$stm->fetch(PDO::FETCH_NUM);
 $data[] = array("id"=>$row[0],"thumb"=>$row[1],"lokasi"=>$row[2]);

 echo json_encode($data);

?>
