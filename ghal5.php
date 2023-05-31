<?php
require_once ("source.php");

 $data = array();

 $stm=$pdo->query("select * from halaman where h_id = 5");
 $row=$stm->fetch(PDO::FETCH_NUM);

 $data[] = array("id"=>$row[0],"judul"=>$row[1],"isi"=>$row[2]);


 echo json_encode($data);

?>
