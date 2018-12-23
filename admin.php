<?php  include('server.php'); ?>
<?php 
	if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$update = true;
		$record = mysqli_query($db, "SELECT * FROM `anime-list` WHERE id=$id");

		if (@count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$idshka = $n['id'];
			$name = $n['name'];
			$rating = $n['rating'];
			$views = $n['views'];
			$votes = $n['votes'];
			$image = $n['image'];
			$link = $n['link'];
			$year = $n['year'];
			$genre = $n['genre'];
			$type = $n['type'];
			$episodes = $n['episodes'];
		}
	}
?>
<html>
<head>
	<title>Admin page</title>
	<link rel="stylesheet" href="css/stylecrud.css">
</head>
<body>
	<a href="project.html">Back</a>
	<?php if (isset($_SESSION['message'])): ?>
	<div class="msg">
		<?php 
			echo $_SESSION['message']; 
			unset($_SESSION['message']);
		?>
	</div>
	<?php endif ?>
	<?php $results = mysqli_query($db, "SELECT * FROM `anime-list` WHERE 1"); ?>

	<table>
		<thead>
			<tr>
				<th colspan="2">id</th>
				<th colspan="2">name</th>
				<th colspan="2">rating</th>
				<th colspan="2">views</th>
				<th colspan="2">votes</th>
				<th colspan="2">image</th>
				<th colspan="2">link</th>
				<th colspan="2">year</th>
				<th colspan="2">genre</th>
				<th colspan="2">type</th>
				<th colspan="2">episodes</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
	
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td colspan="2"><?php echo $row['id']; ?></td>
			<td colspan="2"><?php echo $row['name']; ?></td>
			<td colspan="2"><?php echo $row['rating']; ?></td>
			<td colspan="2"><?php echo $row['views']; ?></td>
			<td colspan="2"><?php echo $row['votes']; ?></td>
			<td colspan="2"><?php echo $row['image']; ?></td>
			<td colspan="2"><?php echo $row['link']; ?></td>
			<td colspan="2"><?php echo $row['year']; ?></td>
			<td colspan="2"><?php echo $row['genre']; ?></td>
			<td colspan="2"><?php echo $row['type']; ?></td>
			<td colspan="2"><?php echo $row['episodes']; ?></td>
			<td>
				<a href="admin.php?edit=<?php echo $row['id']; ?>" class="edit_btn" >Edit</a>
			</td>
			<td>
				<a href="server.php?del=<?php echo $row['id']; ?>" class="del_btn">Delete</a>
			</td>
		</tr>
	<?php } ?>
</table>
	<form method="post" action="server.php" >
		<div class="input-group">
			<label>id</label>
			<input type="number" name="idshka" value="<?php echo $idshka; ?>">
		</div>
		<div class="input-group">
			<label>Name</label>
			<input type="text" name="name" value="<?php echo $name; ?>">
		</div>
		<div class="input-group">
			<label>Rating</label>
			<input type="number" name="rating" value="<?php echo $rating; ?>">
		</div>
		<div class="input-group">
			<label>Views</label>
			<input type="number" name="views" value="<?php echo $views; ?>">
		</div>
		<div class="input-group">
			<label>Votes</label>
			<input type="number" name="votes" value="<?php echo $votes; ?>">
		</div>
		<div class="input-group">
			<label>Image</label>
			<input type="text" name="image" value="<?php echo $image; ?>">
		</div>
		<div class="input-group">
			<label>Link</label>
			<input type="text" name="link" value="<?php echo $link; ?>">
		</div>
		<div class="input-group">
			<label>Year</label>
			<input type="number" name="year" value="<?php echo $year; ?>">
		</div>
		<div class="input-group">
			<label>Genre</label>
			<input type="text" name="genre" value="<?php echo $genre; ?>">
		</div>
		<div class="input-group">
			<label>Type</label>
			<input type="text" name="type" value="<?php echo $type; ?>">
		</div>
		<div class="input-group">
			<label>Episodes</label>
			<input type="number" name="episodes" value="<?php echo $episodes; ?>">
		</div>
		<div class="input-group">
			<?php if ($update == true): ?>
			<button class="btn" type="submit" name="update" style="background: #556B2F;" >update</button>
			<?php else: ?>
			<button class="btn" type="submit" name="save" >Save</button>
			<?php endif ?>
		</div>
	</form>
</body>
</html>