<html>
<body>
<form method = "post">
Enter first number: <input type="number" name="add">
<br><br>
Enter second number: <input type="number" name="sub">
<br><br>
<input type="submit" name="submit" value="submit">
</form>
</body>
</html>

<?php
if (isset($_POST['submit'])) {
	$add=$_POST['add'];
	$sub=$_POST['sub'];
	$sum=$add *$sub;
	echo "the sum of $add and $sub is $sum";
}
?>