<?php
class Myclass
{	
	public function menu_dequi($data,$parentid)
	{
		echo "<ul>";
		foreach ($data as $m) {
			$id=$m['id'];
			if ($m['parentid']==parentid)
			{
				echo "<li>";
				echo "<a href='index.php?option=sanpham&cat=".$m['link']."'>".$m['name']."</a>";
				$this->menu_dequi($data,$id);
				echo "</li>";
			}
		}
		echo "</ul>";
	}
}
?> 