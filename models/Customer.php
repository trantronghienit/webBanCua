<?php

class Customer extends Database 
{
	function __construct()
	{
		parent::__construct();
		$this->table=$this->TableName('customer');
	}
	function customer_is_email($email)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND status='1' AND email='$email' ";
		if(count($this->QueryAll($sql)))
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}
	function customer_is_login($email,$password)
	{
		$sql="SELECT * FROM $this->table WHERE trash='1' AND status='1' AND email='$email' AND password='$password'";
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