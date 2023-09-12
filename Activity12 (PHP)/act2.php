<html>
<body>
<form method = "post">
Enter number: <input type="number" name="number">
<br>
<input type="submit" name="submit" value="submit">
</form>
</body>
</html>
<?php
	if($_POST){
		$fact=1;
	}
if (isset($_POST['submit'])) {
	$number=$_POST['number'];
	for ($i=1;$i<=$number;$i++){
		$fact=$fact*$i;
	}
		echo "$fact";
		echo '<br>';
	}

?>

