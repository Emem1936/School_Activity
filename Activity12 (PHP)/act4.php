<html>
<body>
<form method = "post">
Enter year: <input type="number" name="year">
<br><br>
<input type="submit" name="submit" value="submit">
</form>
</body>
</html>


<?php
if(isset($_POST['submit'])) 
{
	$year=$_POST['year'];
	if($year % 4)
	{
		echo "$year is not Leap Year";
	
	}
	else
	{
		echo "$year is Leap Year ";
	}
}
?>