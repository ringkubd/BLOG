	</div>

	<div class="footersection templete clear">
	  <div class="footermenu clear">
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>
			<li><a href="#">Privacy</a></li>
		</ul>
	  </div>
<?php
	$query = "select * from fabl_footer where id = '1'";
	$copyright = $db->select($query);
	if($copyright){
		while($result = $copyright->fetch_assoc()){
?>
	  <p>&copy; 
		  <?php
			echo $result['copyright'];
			echo date('Y');
		  ?>
	  </p>
<?php } } ?>
	</div>
<!--	<div class="fixedicon clear">
    	<?php
        	$query = "select * from fabl_social where id = '1'";
            $socail = $db->select($query);
            if($socail){
            while($result = $socail->fetch_assoc()){
            ?>
		<a href="<?php echo $result['fb']?>"><img src="images/fb.png" alt="Facebook"/></a>
		<a href="<?php echo $result['tw']?>"><img src="images/tw.png" alt="Twitter"/></a>
		<a href="<?php echo $result['ln']?>"><img src="images/in.png" alt="LinkedIn"/></a>
		<a href="<?php echo $result['gp']?>"><img src="images/gl.png" alt="GooglePlus"/></a>
		<?php } } ?>
	</div>-->
<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>