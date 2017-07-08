<?php defined('BASEPATH') or exit('No direct script access allowed');
	/**
	* 
	*/
	class TenModel extends Database
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table=$this->TableName("phuong_dataphp");
		}
	}

?>
