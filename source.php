<?phP

$pdo = new PDO("mysql:host=localhost;dbname=dipo", "bt", "ad");

  function t_bul($tanggal)
  {
      $bulan = array (1 =>   'Jan',
			'Feb',
			'Mar',
			'Apr',
			'Mei',
			'Jun',
			'Jul',
			'Agu',
			'Sep',
			'Okt',
			'Nov',
			'Des'
		);
     $split = explode('-',$tanggal);
     return $bulan[(int)$split[1]].' '.$split[0];
  }

  function t_month($tanggal)
  {
      $bulan = array (1 =>   'Jan',
			'Feb',
			'Mar',
			'Apr',
			'May',
			'Jun',
			'Jul',
			'Aug',
			'Sep',
			'Oct',
			'Nov',
			'Dec'
		);
     $split = explode('-',$tanggal);
     return $bulan[(int)$split[1]].' '.$split[0];
  }

  function cfn($filename){
     $bad = array(' ','-','/','à','á','ä','ã','â','ª','ç','è','é','ê','ë','ì','í','î','ï','ò','ó','õ','ô','ö',
        		'ñ','ù','ú','û','ü',"<!--","-->","'","<",">",'"','&','$','=',';','?',"%20","%22",    
			"%3c","%253c","%3e","%0e","%28","%29","%2528","%26","%24","%3f","%3b","%3d",'(',')');
     $filename = str_replace($bad, '', $filename);
     return stripslashes($filename);
   }

  function ltgl($tanggal) {
      If ($tanggal) {
            $tanggal  = str_replace("-", "", $tanggal);
            $hari   = substr($tanggal, 6, 2);
            $bulan = substr($tanggal, 4, 2);
            $tahun  = substr($tanggal, 0, 4);
            $tanggal  = "$hari-$bulan-$tahun";
      }
      return $tanggal;
  }

  function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
 
}

  function komti($angka){

	$hasil = str_replace(",", ".", $angka);
	return $hasil;

}

  function tikom($angka){

	$hasil = str_replace(".", ",", $angka);
	return $hasil;

}

   $blx=array('  ','Januari','Pebuari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','Nopember','Desember');

   $bly=array('  ','Jan','Peb','Mar','Apr','Mei','Jun','Jul','Agu','Sep','Okt','Nop','Des');

  function c_tg($tgl,$bln,$thn){
     switch($bln)
     {
       case 1:
       case 3:
       case 5:
       case 7:
       case 8:
       case 10:
       case 12:
        if($tgl<32){ $kembali=$tgl."/".$bln;}else{ $kembali="----";}
        if($tgl<1){$kembali="----";}
       break;

       case 2:
         switch($thn)
         {
            case 2024:
            case 2028:
              if($tgl<30){ $kembali=$tgl."/".$bln;}else{ $kembali="----";}
              if($tgl<1){$kembali="----";}
          break;

            default:
              if($tgl<29){ $kembali=$tgl."/".$bln;}else{ $kembali="----";}
              if($tgl<1){$kembali="----";}
              break;
         }
        break;

       case 4:
       case 6:
       case 9:
       case 11:
        if($tgl<31){ $kembali=$tgl."/".$bln;}else{ $kembali="----";}
        if($tgl<1){$kembali="----";}
        break;
     }
   return $kembali;
 }

 $tgl=array('00','01','02','03','04','05','06','07','08','09');


?>
