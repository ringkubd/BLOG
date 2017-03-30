<?php 
	include 'inc/header.php';
?>
<?php
	if(!isset($_GET['id']) || $_GET['id'] == NULL){
		header("Location:404.php");
	}else{
		$id = $_GET['id'];
	}
?>
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
				<?php 
					$query = "select * from fabl_post where id ='$id'";
					$post = $db->select($query);
					if($post){
						while($result = $post->fetch_assoc()){
				?>
				<h2><?php echo $result['title'];?></h2>
				<h4>
					<?php echo $fm->formatdate($result['date']);?>
					<a href="#">
						<?php echo $result['author'];?>
					</a>
				</h4>
				<img src="admin/<?php echo $result['image'];?>" alt="post image"/>
				<p>
					<?php echo $result['body'];?>
				</p>
				<div class="relatedpost clear">
					<h2>Related articles</h2>
					<?php
						$catid = $result['cat'];
						$queryCat = "select * from fabl_post where cat='$catid' order by rand() limit 4";
						$r_post = $db->select($queryCat);
						if($r_post){
							while($result = $r_post->fetch_assoc()){
					?>
					<a href="post.php?id=<?php echo $result['id'];?>">
						<img src="admin/<?php echo $result['image'];?>" alt="post image"/>
					</a>
					<?php
							}
						}else{
							echo "no related post on this topics";
						}
					?>
				</div>
				<?php
						}
					}else{
						header("Location:404.php");	
					} ;
				?>
	</div>

		</div>
		<!--<div class="sidebar clear">
			<div class="samesidebar clear">
				<h2>Latest articles</h2>
					<ul>
						<li><a href="#">Category One</a></li>
						<li><a href="#">Category Two</a></li>
						<li><a href="#">Category Three</a></li>
						<li><a href="#">Category Four</a></li>
						<li><a href="#">Category Five</a></li>						
					</ul>
			</div>-->
<?php 
	include 'inc/sidebar.php';
	include 'inc/footer.php';
?>