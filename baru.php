<?php
require_once ("source.php");

$cari = $_POST['cari'];

$data = array();

$stm= $pdo->query("select * from dipo WHERE UPPER(nama) LIKE'%$cari%' ORDER BY nama");
$jl1=$stm->fetchAll(PDO::FETCH_NUM);

foreach($jl1 as $row) {
    $data[] = array("id"=>$row[0],"nama"=>$row[1],"lama"=>$row[2],
                     "kelas1"=>$row[6],"kelas2"=>$row[7],"kelas3"=>$row[8]);

    }

   echo json_encode($data);

?>


