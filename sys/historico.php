<?php
if(isset($_POST['conversacom'])){
	include_once "../defines.php";
	require_once('../classes/BD.class.php');
	BD::conn();

	$mensagens = array();
	$id_conversa = (int)$_POST['conversacom'];
	$online = (int)$_POST['online'];

	$pegaConversas = BD::conn()->prepare("SELECT * FROM `mensagens` WHERE (`id_de` = ? AND `id_para` = ?) OR (`id_de` = ? AND `id_para` = ?) ORDER BY `id` DESC LIMIT 10");
	$pegaConversas->execute(array($online, $id_conversa, $id_conversa, $online));

	while($row = $pegaConversas->fetch()){
		$fotouser = '';
		if($online == $row['id_de']){
			$janela_de = $row['id_para'];

		}elseif($online == $row['id_para']){
			$janela_de = $row['id_de'];

			$pegaFoto = BD::conn()->prepare("SELECT `foto` FROM `usuarios` WHERE `id` = '$row[id_de]'");
			$pegaFoto->execute();

			while($usr = $pegaFoto->fetch()){
				$fotouser = ($usr['foto'] == '') ? 'default.jpg' : $usr['foto'];
			}
		}

		$emotions = array(':)', ':@', '8)', ':D', ':3', ':(', ';)');
		$imgs = array(
			'<img src="emotions/nice.png" width="14"/>',
			'<img src="emotions/angry.png" width="14"/>',
			'<img src="emotions/cool.png" width="14"/>',
			'<img src="emotions/happy.png" width="14"/>',
			'<img src="emotions/ooh.png" width="14"/>',
			'<img src="emotions/sad.png" width="14"/>',
			'<img src="emotions/right.png" width="14"/>'
		);
		$msg = str_replace($emotions, $imgs, $row['mensagem']);
		$mensagens[] = array(
			'id' => $row['id'],
			'mensagem' => utf8_encode($msg),
			'fotoUser' => $fotouser,
			'id_de' => $row['id_de'],
			'id_para' => $row['id_para'],
			'janela_de' => $janela_de
		);

	}
	die( json_encode($mensagens) );
}
?>