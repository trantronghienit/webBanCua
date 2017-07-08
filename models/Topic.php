<?php
class Topic extends Database 
{
	function __construct()
	{
		parent::__construct();
		$this->table=$this->TableName('topic');
	}
	function topic_id($catlink)
	{
		$sql="SELECT * FROM $this->table WHERE link='$catlink' LIMIT 1 ";
		$row=$this->QueryOne($sql);
		return $row['id'];
	}
}
?>