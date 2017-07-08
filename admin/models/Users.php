<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends Database 
{
	function __construct()
	{
		parent::__construct();
		$this->table=$this->TableName('users');
	}
	function users_view($first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ORDER BY created_at DESC LIMIT $first,$limit ";
		return $this->QueryAll($sql);
	}
	function users_namecatid($id)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND id='$id' LIMIT 1 ";
		$row=$this->QueryOne($sql);
		return $row['name'];
	}
	function users_view_count()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ";
		return count($this->QueryAll($sql));
	}
	function users_detail($id)
	{
		$sql="SELECT * FROM $this->table WHERE id='$id' LIMIT 1";
		return $this->QueryOne($sql);
	}
	function users_status($status,$id)
	{
		$sql="UPDATE $this->table SET status='$status'  WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function users_deltrash($id)
	{
		$sql="UPDATE $this->table SET trash='0' WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function users_trash($first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE trash='0' ORDER BY created_at DESC LIMIT $first,$limit ";
		return $this->QueryAll($sql);
	}
	
	function users_trash_count()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ";
		return count($this->QueryAll($sql));
	}
	function users_retrash($id)
	{
		$sql="UPDATE $this->table SET trash='1' WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function users_delete($id)
	{
		$sql="DELETE FROM $this->table WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function users_insert($data)
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
	function users_list()
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' ORDER BY created_at DESC";
		return $this->QueryAll($sql);
	}
	function users_update($data,$id)
	{
		$strset="";
		foreach ($data as $k=> $v) {
			$strset.=$k."='$v',";
		}
		$strset=rtrim(rtrim($strset),',');
		$sql="UPDATE $this->table SET $strset WHERE id='$id'";
		$this->QueryNoResult($sql);
	}
	function users_is_username($username)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND status='1' AND username='$username' ";
		if(count($this->QueryAll($sql)))
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}
	function users_is_login($username,$password)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND status='1' AND username='$username' AND password='$password'";
		if(count($this->QueryAll($sql)))
		{
			return $this->QueryOne($sql);
		}
		else
		{
			return false;
		}
	}
}
?>