<?php
require_once ("source.php");

 $data = array();

 $stm=$pdo->query("select * from foto");
 $jl1=$stm->fetchAll(PDO::FETCH_NUM);
 foreach($jl1 as $row) {

    $data[] = array("id"=>$row[0],"thumb"=>$row[1],"lokasi"=>$row[2]);

 }

 echo json_encode($data);

?>
