<?php
require_once ("source.php");
$hari = date('M');
$bulan = date('m');

$data = array();

$stm=$pdo->query("select * from dipo");
$jl1=$stm->fetchAll(PDO::FETCH_NUM);
foreach($jl1 as $row) {

  if($row[4]){
     $bln = explode("-",$row[4]);
     if(intval($bulan) == intval($bln[1])) {
        $data[] = array("id"=>$row[0],"nama"=>$row[1],"lama"=>$row[2],"alamat"=>$row[3],
                    "lahir"=>$row[4],"phone"=>$row[5],"kelas1"=>$row[6],
                        "kelas2"=>$row[7],"kelas3"=>$row[8]);
     }
  }
}

   echo json_encode($data);

?>


