<?php 
	session_start();
	$db = mysqli_connect('localhost', 'root', '', 'anime');

	// initialize variables
	$idshka=0;
	$name = "";
	$rating=0;
	$views=0;
	$votes=0;
	$image = "";
	$link = "";
	$year=0;
	$genre = "";
	$type = "";
	$episodes=0;
	$id = 0;
	$update = false;

	if (isset($_POST['save'])) {
		$name = $_POST['name'];
		$idshka = $_POST["idshka"];
		$rating = $_POST["rating"];
		$views = $_POST["views"];
		$votes = $_POST["votes"];
		$image = $_POST['image'];
		$link = $_POST["link"];
		$year = $_POST["year"];
		$genre = $_POST["genre"];
		$type = $_POST["type"];
		$episodes = $_POST["episodes"];
		

		mysqli_query($db, "INSERT INTO `anime-list` (id, name, rating, views, votes, image, link, year, genre, type, episodes) VALUES ('$idshka', '$name','$rating','$views','$votes','$image','$link','$year','$genre','$type','$episodes')"); 
		$_SESSION['message'] = "Anime added!"; 
		header('location: admin.php');
	}

	if (isset($_POST['update'])) {
		$id = $_POST['id'];
		$idshka = $_POST["idshka"];
		$name = $_POST['name'];
		$rating = $_POST["rating"];
		$views = $_POST["views"];
		$votes = $_POST["votes"];
		$image = $_POST['image'];
		$link = $_POST["link"];
		$year = $_POST["year"];
		$genre = $_POST["genre"];
		$type = $_POST["type"];
		$episodes = $_POST["episodes"];
		

		mysqli_query($db, "UPDATE `anime-list` SET `id`='$idshka',`name`='$name',`rating`='$rating',`views`='$views',`votes`='$votes',`image`='$image',`link`='$link',`year`='$year',`genre`='$genre',`type`='$type',`episodes`='$episodes' WHERE `id`='$id'");
		$_SESSION['message'] = "Anime updated!"; 
		header('location: admin.php');

}
	if (isset($_GET['del'])) {
		$id = $_GET['del'];
		mysqli_query($db, "DELETE FROM `anime-list` WHERE id=$id");
		$_SESSION['message'] = "Anime deleted!"; 
		header('location: admin.php');
}
?>