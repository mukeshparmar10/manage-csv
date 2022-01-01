<?php
if(isset($_POST['submit']))
{
	$target_dir = "uploads/";
	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	// Check if file already exists
	if (file_exists($target_file)) {
	  echo "Sorry, file already exists.";
	  $uploadOk = 0;
	}

	// Check file size
	if ($_FILES["fileToUpload"]["size"] > 500000) {
	  echo "Sorry, your file is too large.";
	  $uploadOk = 0;
	}

	// Allow certain file formats
	if($imageFileType != "csv") {
	  echo "Sorry, only CSV allowed.";
	  $uploadOk = 0;
	}

	// Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
	  echo "Sorry, your file was not uploaded.";
	// if everything is ok, try to upload file
	} else {
	  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
		echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
	  } else {
		echo "Sorry, there was an error uploading your file.";
	  }
	}
}
if(isset($_POST['save']))
{
	$con = new MySQLi("localhost","root","","test");
	if (($open = fopen("uploads/task.csv", "r")) !== FALSE) 
	{
		$count = 0;
		while (($data = fgetcsv($open, 1000, ",")) !== FALSE) 
		{
			if($count > 0)
			{
				$query = "insert into csv_data(DataNo,DataName,DataAddress,DataCity,DataPhone) values('";
				$query .= $data[0] . "','";
				$query .= $data[1] . "','";
				$query .= $data[2] . "','";
				$query .= $data[3] . "','";
				$query .= $data[4] . "')";
			
				if($con->query($query))
				{
					$count++;
				}
			}
			else
			{
				$count++;	
			}
		}
		echo "Total " . ($count-1) . " record saved!";
	}
}
?>
<!doctype html>
<head>
<title>Task</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
Select CSV File : <input type="file" name="fileToUpload" required /><br/>
<input type="submit" name="submit" value="Upload" />
</form>
<form method="post">
<input type="submit" name="save" value="Save" />	
</form>
<?php
	if(isset($_POST['submit']))
	{
	if (($open = fopen("uploads/task.csv", "r")) !== FALSE) 
	{  
?>
	<table border="1px" cellpadding="5px" cellspacing="0px">
<?php		
		while (($data = fgetcsv($open, 1000, ",")) !== FALSE) 
		{
?>			
		<tr align="center">
			<td><?=$data[0]?></td>
			<td><?=$data[1]?></td>
			<td><?=$data[2]?></td>
			<td><?=$data[3]?></td>
			<td><?=$data[4]?></td>
		</tr>
<?php			
		}
?>
	</table>
<?php		
	}	
	}
?>
</body>
</html>