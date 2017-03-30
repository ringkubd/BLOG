<?php 
	include 'inc/header.php';
	if(isset($_POST['btnsend'])){
		$firstname = $fm-> validation($_POST['firstname']);
		$lastname = $fm-> validation($_POST['lastname']);
		$email = $fm-> validation($_POST['email']);
		$body = $fm-> validation($_POST['body']);

		$firstname = mysqli_real_escape_string($db->link, $firstname);
		$lastname = mysqli_real_escape_string($db->link, $lastname);
		$email = mysqli_real_escape_string($db->link, $email);
		$body = mysqli_real_escape_string($db->link, $body);

		$error = "";

		if (empty($firstname)) {
			$error = "First Name Must Not Be Empty";
		} else if(empty($lastname)){
			$error = "Last Name Must Not Be Empty";
		}elseif (empty($email)) {
			$error = "Email Must Not Be Empty";
		}elseif(!filter_var($email , FILTER_VALIDATE_EMAIL)){
			$error = "Invalid Email";
		}elseif (empty($body)) {
			$error = "Message Must Not Be Empty";
		}else{
			$query = "insert into fabl_contact(firstname,lastname,email,body) values('$firstname','$lastname','$email','$body')";
			$result = $db->insert($query);
			if ($result) {
				$msg = "Message Has been sent";
			}else{
				$error = "Message Can not Be sent";
			}
		}
		
	}
?>

	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
				<h2>Contact us</h2>
				<?php
					if (isset($error)) {
						echo "<span style='color:red'>$error</span>";
					}
					if (isset($msg)) {
						echo "<span style='color:green'>$msg</span>";
					}
				?>
			<form action="" method="post">
				<table>
				<tr>
					<td>Your First Name:</td>
					<td>
					<input type="text" name="firstname" placeholder="Enter first name"/>
					</td>
				</tr>
				<tr>
					<td>Your Last Name:</td>
					<td>
					<input type="text" name="lastname" placeholder="Enter Last name" />
					</td>
				</tr>
				
				<tr>
					<td>Your Email Address:</td>
					<td>
					<input type="email" name="email" placeholder="Enter Email Address"/>
					</td>
				</tr>
				<tr>
					<td>Your Message:</td>
					<td>
					<textarea name="body"></textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
					<input type="submit" name="btnsend" value="Send"/>
					</td>
				</tr>
		</table>
	<form>				
 </div>

		</div>
<?php 
	include 'inc/sidebar.php';
	include 'inc/footer.php';
?>