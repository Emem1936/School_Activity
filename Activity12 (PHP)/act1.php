
<html>
<body>
<form method = "post">
Enter number: <input type="number" name="number">
<br><br>
<input type="submit" name="submit" value="submit">
</form>
</body>
</html>


<?php
if(isset($_POST['submit'])) 
{
	$number=$_POST['number'];
	if (empty($number)){
		echo "Please input number";
		return;
	}
	
	if ($number%2) {
		echo "$number is ODD";
	}
	else 
	{
		echo "$number is EVEN";
	}

}
?>

