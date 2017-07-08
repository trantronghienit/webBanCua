<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Topic extends Database 
{
	function __construct()
	{
		parent::__construct();
		$this->table=$this->TableName('topic');
	}
	function topic_view($first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ORDER BY created_at DESC LIMIT $first,$limit ";
		return $this->QueryAll($sql);
	}
	function topic_namecatid($id)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND id='$id' LIMIT 1 ";
		$row=$this->QueryOne($sql);
		return $row['name'];
	}
	function topic_view_count()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ";
		return count($this->QueryAll($sql));
	}
	function topic_detail($id)
	{
		$sql="SELECT * FROM $this->table WHERE id='$id' LIMIT 1";
		return $this->QueryOne($sql);
	}
	function topic_status($status,$id)
	{
		$sql="UPDATE $this->table SET status='$status'  WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function topic_deltrash($id)
	{
		$sql="UPDATE $this->table SET trash='0' WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function topic_trash($first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE trash='0' ORDER BY created_at DESC LIMIT $first,$limit ";
		return $this->QueryAll($sql);
	}
	
	function topic_trash_count()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ";
		return count($this->QueryAll($sql));
	}
	function topic_retrash($id)
	{
		$sql="UPDATE $this->table SET trash='1' WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function topic_delete($id)
	{
		$sql="DELETE FROM $this->table WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function topic_insert($data)
	{
		$strf="";
		$strv="";
		foreach($data as $k=>$v) {
			$strf.=$k.",";
			$strv.="'$v',";			
		}
		$strf=rtrim(rtrim($strf),',');
		$strv=rtrim(rtrim($strv),',');		
		$sql="INSERT INTO $this->table($strf) VALUES($strv)";
		$this->QueryNoResult($sql);
	}
	function topic_list()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ORDER BY created_at DESC";
		return $this->QueryAll($sql);
	}
	function topic_update($data,$id)
	{
		$strset="";
		foreach ($data as $k=> $v) {
			$strset.=$k."='$v',";
		}
		$strset=rtrim(rtrim($strset),',');
		$sql="UPDATE $this->table SET $strset WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
}
?>