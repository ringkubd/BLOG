<?php
	class Format{
		public function formatdate($date){
			return date('F j Y, g:i a ', strtotime($date));
		}
		public function txtlimit($txt , $limit = 400){
			$text = $txt. " ";
			$text = substr($txt, 0 , $limit);
			$text = substr($txt, 0 , strrpos($text, ' '));
			$text = $text."....";
			return $text;
		}
		public function validation($data){
			$data = trim($data);
			$data = stripcslashes($data);
			$data = htmlspecialchars($data);
			return $data;
		}

		public function title(){
			$path = $_SERVER['SCRIPT_FILENAME'];
			$title = basename($path, '.php');
			if ($title == 'index') {
				$title = 'home';
			}else if ($title == 'index') {
				$title = 'contact';
			}
			return $title = ucwords($title);
		}
	}
?>