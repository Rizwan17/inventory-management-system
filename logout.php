<?php

include_once("./database/constants.php");
if (isset($_SESSION["userid"])) {
	session_destroy();
}
header("location:".DOMAIN."/");

?>