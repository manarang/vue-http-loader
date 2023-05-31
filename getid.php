<?php
require_once ("source.php");

 $data = array();

$id=$_POST['id'];

 $stm= $pdo->query("select * from dipo where id=$id");
 $row=$stm->fetch(PDO::FETCH_NUM);

 $data[] = array("id"=>$row[0],"nama"=>$row[1],"lama"=>$row[2],"alamat"=>$row[3],
                     "lahir"=>$row[4],"phone"=>$row[5],"kelas1"=>$row[6],
                        "kelas2"=>$row[7],"kelas3"=>$row[8]);

 echo json_encode($data);

?>
