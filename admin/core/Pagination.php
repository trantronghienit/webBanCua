<?php

class Pagination
{
	
	function PageCurrent()
	{
		if(!isset($_REQUEST['page']))
		{
			$current=1;
		}
		else
		{
			$current=$_REQUEST['page'];
		}
		return $current;
	}
	function PageFirst($current,$limit)
	{
		return($current==1)?0:(($current-1)*$limit);
	}
	function PagePer($total,$current,$limit,$url ='')
	{
		if($total==0) return '';
		$numPage = floor($total/$limit);
		if(($total/ $limit) - $numPage>0){
			$numPage+=1;
		}
		$html = '';
		if ($numPage ==1){
			return '';
		}
		if ($current ==1){
			$html .="<li><a>Trang đầu</a></li>";
			$html .="<li><a>Trước</a></li>";
		}
		else
		{
			$html .="<li><a href='index.php?option=$url&page=1'>Trang đầu</a></li>";
			$html .="<li><a href='index.php?option=$url&page=".($current - 1)."'>Trước</a></li>";
		}
		if ($current <=3){
			for ($i=1;($i<=5) and ($i <= $numPage); $i++){
				if ($i == $current){
					$html .="<li><a>".$i."</a></li>";
				}else{
					$html .="<li><a href='index.php?option=$url&page=$i'>$i</a></li>";
				}
			}
		}else{
			if ($numPage>= $current +2){
				for($i=$current-2;($i <=$current+2) and ($i <= $numPage);$i++){
					if ($i ==$current){
						$html .="<li><a>".$i."</a></li>";
					}else{
						$html.="<li><a href='index.php?option=$url&page=$i'>$i</a></li>";
					}
				}
			}else{
				for ($i =$numPage -4;$i <=$numPage;$i++){
					if($i >0){
						if($i ==$current){
							$html .="<li><a>".$i."</a></li>";
						}else{
							$html.="<li><a href='index.php?option=$url&page=$i'>$i</a></li>";
						}
					}
				}
			}
		}
		if ($current == $numPage){
			$html .='<li><a> Sau</a></li>';
			$html .='<li><a>Trang cuối</a></li>';

		}else{
			$html .="<li><a href='index.php?option=$url&page=".($current + 1)."'>Sau</a></li>";
			$html .="<li><a href='index.php?option=$url&page=$numPage'>Trang cuối</a></li>";
		}
		return $html;
		
}
}
?>
<!-- // 	function PageLink($total,$limit,$url)
//     {
//         $sotrang=floor($total/$limit);
//         if($total%$limit!=0)
//         {
//             $sotrang++;
//         }
//         $html="<ul class='pagination'>";
//         for($i=1;$i<=$sotrang;$i++)
//         {
//             $html.="<li><a href='$url&page=$i'>$i</a></li>";
//         }
//         $html.="</ul>";
//         return $html;
//     }
// } -->
