<?php
	
function getClients(){
	$sql = "select * from client;";
	return requeteDb($sql);
}

function getClient($id){
	$sql = "select * from client where cliId = $id";
	return requeteDb($sql);
}

function addClient(){
	
	$sql = "insert into client values (null,";
	$sql .= "'".HTMLSPECIALCHARS($_POST["login"])."',";
	$sql .= "'".sha1($_POST["passwd"])."',";
	$sql .= "'".HTMLSPECIALCHARS($_POST["entreprise"])."',";
	$sql .= "'".HTMLSPECIALCHARS($_POST["email"]."'");
	$sql .= ");";
	
	return requeteDb($sql);
}

function updateClient($infos, $cliId){
		
	$sql = "UPDATE client ";
	$sql .= "SET cliLogin = '".$infos["login"]."'";
	$sql .= ", cliEntreprise = '".$infos["entreprise"]."'";
	$sql .= ", cliMail = '".$infos["email"]."'";
	if($infos["passwd"] != "")
		$sql .= ", cliPassword = '".sha1($infos["passwd"])."'";
	
	$sql.= " WHERE cliId = $cliId";
	return requeteDb($sql);
}

function deleteClient($id){
	$sql = "DELETE from client where cliId = $id";
	
	return requeteDb($sql);
}

function getArrayFromForm(){
	$retour = Array();
	
	$retour["login"] = htmlspecialchars(getParamUrl("login"));
	$retour["email"] = htmlspecialchars(getParamUrl("email"));
	$retour["entreprise"] = htmlspecialchars(getParamUrl("entreprise"));
	
	if($password = getParamUrl("password") != "")
		$retour["password"] = $password;
	
	return $retour;
	
}
?>