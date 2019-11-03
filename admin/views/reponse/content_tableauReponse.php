<?php
$questTexte 	= $question[0]["questQuestion"];
$questId 	= $question[0]["questId"];
$questProc 	= $question[0]["questProcessus"];

echo "A la question : $questTexte";

if($reponses != null){
	
	echo "<br/>Les réponses suivantes sont proposées :";
	echo "<ul>";
	
	foreach($reponses as $reponse){
		$repId 		= $reponse["repId"];
		$repTexte	= $reponse["repLibelle"];
		
		echo "<li>";
		echo $repTexte;
		echo " (<a href='module=reponse&action=alter&reponse=$repId'>Modifier</a> / ";
		echo "<a href='module=reponse&action=delete&reponse=$repId'>Supprimer</a>)";
		echo "</li>";
	}
	echo "</ul>";
}
else
	echo "<br/>Il n'existe pas encore de réponse à proposer au client.<br/><br/>";

echo "<a href='module=reponse&action=add&question=$questId'>Ajouter une réponse</a>";
echo "<br/><br/><a href='module=question&processus=$questProc'>Retour au questionnaire</a>";
?>