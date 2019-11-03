<?php
if($step == 1){
	if(count($prerequis) == 0){
		echo "Il n'existe aucune question pouvant faire office de prérequis. Veuillez en ajouter.";
	}
	else{	
		echo "<form id='form_qPrerequis' action='index.php' method='POST'>";
		echo "<select name='question' onChange=\"$('#form_qPrerequis').submit()\">";
		echo "<option value='' selected></option>";
		foreach($prerequis as $infos){
			$id 	= $infos["questId"];
			$texte 	= $infos["questQuestion"];
			echo "<option value='$id'>$texte</option>";
		}
		echo "</select>";
		echo "<input type='hidden' name='processus' value='$procId'/>";
		echo "<input type='hidden' name='module' value='question'/>";
		echo "<input type='hidden' name='action' value='getPrerequis'/>";
		echo "<input type='hidden' name='step' value='2'/>";
		echo "</form>";
	}
}
elseif($step == 2){
	if(count($reponses) == 0){
		echo "Il n'y a pas de réponses liée à cette question.";
	}
	else{
		echo "<form action='index.php' method='POST'>";
		echo "<label for='reponse'>Choisir une réponse : </label>";
		echo "<select name='reponse' id='reponses'>";
		foreach($reponses as $infos){
			$id 	= $infos["repId"];
			$texte 	= $infos["repLibelle"];
			echo "<option value='$id'>$texte</option>";
		}
		echo "</select>";
		echo "<input type='hidden' name='processus' value='$procId'/>";
		echo "<input type='hidden' name='step' value='3'/>";
		echo "<br/><br/><input type='submit' value='Valider'/>";
		echo "</form>";
	}
	
	echo "<br/><br/><a href='module=question&action=getPrerequis&processus=$procId&question=$questId'>Retour aux questions</a>";
}
?>