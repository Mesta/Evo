<?php
function connectionDb(){
	
	$fields = Array("serverName", "databaseName", "login", "password");
	
	$config = getConfiguration($fields);
	foreach($config as $field => $value){
		$$field = $value;
	}
	
	$mysqli = new mysqli($serverName, $login, $password, $databaseName);
	if($mysqli->connect_errno)
		$retour = false;
	else{
		$mysqli->set_charset("latin1");
		$retour = $mysqli;
	}
	return $retour;
}

function requeteDb($sql){
	$link = connectionDb();
	
	if($link == false){
		$retour = false;
	}
	else{
		$res = $link->query($sql);
		if(is_bool($res))
			$retour = $res;
		else{
			$cpt = 0;
			while($tab = $res->fetch_assoc()){
				foreach($tab as $key => $value)
					$retour[$cpt][$key] = htmlspecialchars_decode($value);
				$cpt++;
			}
		}
	}
	return $retour;	
}