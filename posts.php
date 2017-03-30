<?php
	include 'inc/header.php';
	include 'inc/slider.php';
?>
<?php
	if(!isset($_GET['catagory']) || $_GET['catagory'] == NULL){
		header("Location:404.php");
	}else{
		$cat_id = $_GET['catagory'];
	}
?>
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<?php
				$query = "select * from fabl_post where cat= '$cat_id'";
				$post = $db->select($query);
				if($post){
					while($result = $post->fetch_assoc()){
			
			?>
			<div class="samepost clear">
				<h2>
					<a href="post.php?id=<?php echo $result['id'];?>">
						<?php echo $result['title'];?>
					</a>
				</h2>
				<h4>
					<?php echo $fm->formatdate($result['date']);?>
					<a href="#">
						<?php echo $result['author'];?>
					</a>
				</h4>
				 <a href="#"><img src="admin/<?php echo $result['image'];?>" alt="post image"/></a>
				<p>
					<?php echo $fm->txtlimit($result['body']);?>
				</p>
				<div class="readmore clear">
					<a href="post.php?id=<?php echo $result['id'];?>">Read More</a>
				</div>
			</div>
			<?php 
				}
				}else{
					echo "<h3>No Post Available for this catagory</h3>";
				}
			?>
		</div>
<?php 
	include 'inc/sidebar.php';
	include 'inc/footer.php';
?>