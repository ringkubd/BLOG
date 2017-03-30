<?php
		if (isset($_GET['pageid'])) {

			$pagetitle = $_GET['pageid'];

            $query = "select * from fabl_page where id = '$pagetitle'";
            $pages = $db->select($query);
            if($pages){
                while($result = $pages->fetch_assoc()){
    ?>
		
		<title><?php echo $result['name']." - ".TITLE; ?></title>

    <?php } } }else if (isset($_GET['id'])) {

			$postid = $_GET['id'];

            $query = "select * from fabl_post where id = '$postid'";
            $post = $db->select($query);
            if($post){
                while($result = $post->fetch_assoc()){
    ?>
	
		<title><?php echo $result['title']." - ".TITLE; ?></title>

    
    <?php } } } else{ ?>

    		<title><?php echo $fm->title()." - ".TITLE; ?></title>
    
    <?php } ?>
	
	<meta name="language" content="English">
	<meta name="description" content="It is a website about education">

	<?php
		if (isset($_GET['id'])) {
			$keyword = $_GET['id'];
			$query = "select * from fabl_post where id = '$keyword'";
			$result = $db->select($query);
			if ($result) {
				while ($data = $result->fetch_assoc()) {
	?>
	<meta name="keywords" content="<?php echo $data['tags'] ; ?>">
	<?php } } } else{ ?>
	<meta name="keywords" content="<?php echo KEYWORD ; ?>">
	<?php } ?>
	<meta name="author" content="Faisal">