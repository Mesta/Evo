<?php
if($resultat)
	echo "Le mot et sa définition ont été correctement supprimés.";
else
	echo "Une erreur est survenue durant la suppression de la définition. Veuillez recommencer.";

echo "<script>requete('module=dictionnaire');fermerDialogBox();</script>";