<?php

if($resultat){
	echo "Le processus a bien été modifié.<script>requete('module=processus');fermerDialogBox()</script>";
}
else
	echo "Le processus n'a pas pu tre modifié. Veuillez réessayer.";