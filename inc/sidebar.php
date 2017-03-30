		<div class="sidebar clear">
			<div class="searchbtn">
				<form action="search.php" method="get">
					<input type="text" name="search" placeholder="Search"/>
					<button><i class="fa fa-search"></i></button>
				</form>
			</div>
			<div class="samesidebar clear">
				<h2>Categories</h2>
					<ul>
						<?php
							$query = "select * from fabl_cat  order by rand() limit 5";
							$catagory = $db->select($query);
							if($catagory){
								while($result = $catagory->fetch_assoc()){
						?>
						<li><a href="posts.php?catagory=<?php echo $result['id']?>"><?php echo $result['name']?></a></li>
						<?php
								}
							}else{
						?>
						<li>No Catagory Created</li>
						<?php }?>
					</ul>
			</div>
			
			<div class="samesidebar clear">
				<h2>Latest articles</h2>
			<?php
				$query = "select * from fabl_post order by date desc limit 5";
				$post = $db->select($query);
				if($post){
					while($result = $post->fetch_assoc()){
			?>
					<div class="popular clear">
						<h3>
							<a href="post.php?id=<?php echo $result['id'];?>">
								<?php echo $result['title'];?>
							</a>
						</h3>
						<a href="post.php?id=<?php echo $result['id'];?>">
							<img src="admin/<?php echo $result['image'];?>" alt="post image"/>
						</a>
						<p>
							<?php echo $fm->txtlimit($result['body'],120);?>
						</p>	
					</div>
			<?php
					}
				}else{
					header("Location:404.php");	
				} ;
			?>
			</div>
			
		</div>