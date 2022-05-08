<?php

$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../connect.php');
	if (isset($_POST['dsubmit'])) {
		print_r($_FILES);
		$permited  = array('jpg', 'jpeg', 'png', 'gif');
		$file_name = $_FILES['image']['name'];
		$file_size = $_FILES['image']['size'];
		$file_temp = $_FILES['image']['tmp_name'];

		$div = explode('.', $file_name);
		$file_ext = strtolower(end($div));
		$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
		$uploaded_image = "../images/".$unique_image;
		$msg = "";
		if ($file_size >1048567) {
		    $msg = "Image Size should be less then 1MB!";
		} elseif (in_array($file_ext, $permited) === false) {
		    $msg = "You can upload only:-".implode(', ', $permited);
		} else{
		    move_uploaded_file($file_temp, $uploaded_image);
		    $pass = password_hash($_POST['password'], PASSWORD_DEFAULT);
			$sql = "INSERT INTO `admin`(`f_name`, `l_name`,`avadar`, `email`, `username`, `gender`, `phone`, `password`) 
				VALUES ('{$_POST['fname']}','{$_POST['lname']}','{$unique_image}','{$_POST['email']}','{$_POST['username']}','{$_POST['gender']}','{$_POST['phone']}','{$pass}')";
			$result = mysqli_query($connect, $sql);

			if ($result) {
				header("Location: http://localhost/Emedicare/adminlog.php?success");
			}
		}
			
	}else

?>