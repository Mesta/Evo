<?php
if($resultat){
	echo "La modification de la solution a bien été enregitrée.";
	echo "<script>requete('module=solution&action=details&solution=$solId');fermerDialogBox();</script>";
}
else
	echo "Une erreur s'est produite durant la mise  jour de la solution. Veuillez recommencer.";
?>