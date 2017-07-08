<?php
	class Database extends WebConfig
	{
		public static $conn;
		public function __construct()
		{
			$this->conn=mysqli_connect($this->host,$this->user,$this->pass,$this->db);
			mysqli_set_charset($this->conn,"utf8");
		}
		public function TableName($name){
			return $this->prefix.$name;
		}
		public function QueryOne($sql)
		{
			$result=mysqli_query($this->conn,$sql);
			$row=mysqli_fetch_assoc($result);
			return $row;

		}
		public function QueryAll($sql)
		{
			$result=mysqli_query($this->conn,$sql);
			$a=array();
			while ($row=mysqli_fetch_assoc($result)) {
				$a[]=$row;
			}
			return $a;
		}
		public function QueryNoResult($sql)
		{
			mysqli_query($this->conn,$sql);
		}

	} 
 ?>