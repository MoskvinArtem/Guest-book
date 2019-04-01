<?php

function clear(){
	global $db;
	foreach ($_POST as $key => $value) {
		$_POST[$key] = mysqli_real_escape_string($db, $value);
	}
}

function save_mess(){
	global $db;
	clear();

	$name = $_POST['name'];
	$text = $_POST['text'];
	$email = $_POST['email'];
	$homepage = $_POST['homepage'];

	$query = "INSERT INTO gb (name, text, email, homepage) VALUES ('$name', '$text', '$email', '$homepage')";
	mysqli_query($db, $query);
}

function get_mess(){
	global $db;

	$query = "SELECT * FROM gb ORDER BY id DESC";
	$res = mysqli_query($db, $query);
	return mysqli_fetch_all($res, MYSQLI_ASSOC);
}


function print_arr($arr){
	echo '<pre>' . print_r($arr, true) . '<pre>';
}