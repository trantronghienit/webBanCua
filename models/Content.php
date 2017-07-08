<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Content extends Database
{
	function __construct()
	{
		parent::__construct();
		$this->table=$this->TableName("content");
	}
	function content_gioithieu($catid)
	{
	$sql="SELECT * FROM $this->table WHERE catid='$catid' AND status='1' AND trash='1' LIMIT 1";
	return $this->QueryOne($sql);
	}
	function content_dichvu($catid)
	{
	$sql="SELECT * FROM $this->table WHERE catid='$catid' AND status='1' AND trash='1' LIMIT 1";

	return $this->QueryOne($sql);
	}
	function content_tintuc($catid,$first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE catid='$catid' AND status='1' AND trash='1' ORDER BY created_at DESC LIMIT $first,$limit";
		return $this->QueryAll($sql);
	}
	function content_tintuc_count($catid)
	{
		$sql="SELECT * FROM $this->table WHERE catid='$catid' AND status='1' AND trash='1'";

		return count($this->QueryAll($sql));
	}
	function content_chitiet($alias)
	{
		$sql="SELECT * FROM $this->table WHERE status='1' AND trash='1' AND alias='$alias' LIMIT 1";
		return $this->QueryOne($sql);
	}

}
?>