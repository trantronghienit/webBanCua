<?php
class Product extends Database
{
	
	function __construct()
	{
		parent:: __construct();
		$this->table=$this->TableName('product');
	}
	//trangchu-sanphammoi
	function product_home_lastnew($limit)
	{
	$sql="SELECT*FROM $this->table WHERE status='1' AND trash='1' ORDER BY created_at DESC LIMIT $limit";
		return $this->QueryAll($sql);
	}
	function product_home_buy($limit)
	{
	$sql="SELECT*FROM $this->table WHERE status='1' AND trash='1' ORDER BY number_buy DESC LIMIT $limit";
		return $this->QueryAll($sql);
	}		
	#ham truy van mau tin
	function product_all($first,$limit)
	{
		$sql="SELECT * FROM $this->table WHERE status='1' AND trash='1' ORDER BY created_by DESC  LIMIT $first,$limit";
			return $this->QueryAll($sql);
	}
	function product_all_count()
	{
		$sql="SELECT*FROM $this->table WHERE status='1' AND trash='1' ORDER BY created_by DESC ";
			return count($this->QueryAll($sql));
	}
	function product_detail($alias)
	{
		$sql="SELECT*FROM $this->table WHERE status='1' AND trash='1' and alias='$alias' LIMIT 1";
			return $this->QueryOne($sql);
	}
	function product_category($catlist,$first,$limit)
	{
		$strdk='';
		foreach ($catlist as $v) {
			$strdk.=" catid='".$v."' OR";
		}
		$strdk=rtrim($strdk);
		$strdk=rtrim($strdk,'OR');
		$strdk=rtrim($strdk);
		$sql="SELECT * FROM $this->table WHERE status='1' AND trash='1' AND ($strdk) ORDER BY created_by DESC LIMIT $first,$limit";
			return $this->QueryAll($sql);

	}
	function product_category_count($catlist)
	{
		$strdk='';
		foreach ($catlist as $v) {
			$strdk.=" catid='".$v."' OR";
		}
		
		$strdk=rtrim($strdk);
		$strdk=rtrim($strdk,'OR');
		$strdk=rtrim($strdk);
		$sql="SELECT * FROM $this->table WHERE status='1' AND trash='1' and ($strdk)";
			return count($this->QueryAll($sql));
	}
}
