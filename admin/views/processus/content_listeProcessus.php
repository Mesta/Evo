<?php
	
if($listeProcessus != NULL){
	echo "<form action='index.php' method='POST'>";
	
	echo "<table id='listeClients'>";
	echo "<tr><td>Sélectionnez un processus : </td>";
	echo "<td><select name='processus'>";
	
	foreach($listeProcessus as $processus){

		$procLibelle = $processus["procLibelle"];
		$procId = $processus["procId"];
		echo "<option value='$procId'>$procLibelle</option>";
	}
	echo "</select></td></tr>";
	echo "<tr>";
	echo "<td colspan='2' align='center'><br/>";
	echo "<input type='submit' value='Slectionner'/>";
	echo "<input type='hidden' name ='module' value='$for'/>";
	if($followingAction != ""){
		echo "<input type='hidden' name ='action' value='$followingAction'/>";
		echo "<input type='hidden' name ='step' value='2'/>";
	}
	
	echo "</td></tr>";
	echo "</table>";
}
else{
	echo "Il n'existe aucun processus. Veuillez tout d'abord en créer.";
	echo '<br/><br/><a href="module=processus&action=add">Créer un processus</a>';
}
?>