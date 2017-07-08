<?php
class Category extends  Database
{
	
	function __construct()
	{
		parent:: __construct();
		$this->table=$this->TableName('category');
	}
	function category_mainmenu($parentid)
	{
		$sql=" SELECT * FROM $this->table WHERE parentid='$parentid' AND trash='1' AND status='1' ORDER BY orders ASC"; 
		return $this->QueryAll($sql);
	}
		function category_all()
	{
		$sql=" SELECT * FROM $this->table WHERE trash='1' AND status='1' ORDER BY orders ASC"; 
		return $this->QueryAll($sql);
	}
	function category_id($catlink)
	{
		$sql=" SELECT * FROM $this->table WHERE link='$catlink'LIMIT 1"; 
		$row=$this->QueryOne($sql);
		return $row['id'];
	}

	function category_parentid($catid)
	{
		$sql=" SELECT id FROM $this->table WHERE parentid='$catid' AND trash='1' AND status='1'"; 
		return $this->QueryAll($sql);
		
	}
}
?>