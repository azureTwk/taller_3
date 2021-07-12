<?php
//mysql
$servername = "172.25.0.2";
$username = "admin";
$password = "admin";
$mysqli = new mysqli($servername, $username, $password);
if ($mysqli->connect_error) {
	die("Connection failed: " . $mysqli->connect_error); }
echo "Connected successfully";
