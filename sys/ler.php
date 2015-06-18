<?php
if(isset($_POST['ler'])){
	include_once "../defines.php";
	require_once('../classes/BD.class.php');
	BD::conn();

	$online = (int)$_POST['online'];
	$user = (int)$_POST['user'];

	$upd = BD::conn()->prepare("UPDATE `mensagens` SET `lido` = 1 WHERE `id_de` = ? AND `id_para` = ?");
	if($upd->execute(array($user, $online))){
		echo 'ok';
	}
}
?>