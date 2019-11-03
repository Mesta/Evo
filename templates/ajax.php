<?php
echo "<?xml version='1.0' encoding='ISO-8859-1'?>\n";
echo "<document>\n";

if(isset($v_content)){
	echo "	<content>";
	echo "<![CDATA[";
	include $v_content;
	echo "]]>";
	echo "	</content>\n";
}

if(isset($v_menu)){
	echo "	<menu>";
	echo "<![CDATA[";
	include $v_menu;
	echo "]]>";
	echo "	</menu>\n";
}

if(isset($titre))
	echo "	<titre>$titre</titre>\n";
	

if(isset($v_notif)){
	echo "	<notification>";
	echo "<![CDATA[";
	include $v_notif;
	echo "]]>";
	echo "	</notification>\n";
}

if(isset($v_connection)){
	echo "	<log>";
	echo "<![CDATA[";
	include $v_connection;
	echo "]]>";
	echo "	</log>\n";
}

if(isset($v_sousMenu)){
	echo "	<sousMenu>";
	echo "<![CDATA[";
	include $v_sousMenu;
	echo "]]>";
	echo "	</sousMenu>\n";
}

if(isset($v_dialogBox)){
	echo "	<dialogBox>";
	echo "<dialTitre>$v_dialogBox_titre</dialTitre>";
	echo "<dialContent><![CDATA[";
	include $v_dialogBox;
	echo "]]></dialContent>";
	echo "	</dialogBox>\n";
}

echo "</document>";
?>