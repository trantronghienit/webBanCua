<?php 
	function loadTemplate ($layout)
	{
		$pathTemplate="views/template/".$layout.".php";
		if (file_exists($pathTemplate))
		{
			include($pathTemplate);
		}
	}
  
	function loadModel ($name)
	{
		$name=ucfirst(strtolower($name));
		$pathModel='models/'.$name.'.php';
		if (file_exists($pathModel))
		{
			include_once($pathModel);
			$modelclass= new $name;
			return $modelclass;
		}
	
	else
		{
			return NULL;
		}
	}
function loadComponents($name)
{
	$pathcom='views/components/';
	if(isset($_REQUEST['option']))
	{		
		$pathcom.=$_REQUEST['option']."/";
		if(isset($_REQUEST['cat']))
		{
			$pathcom.=$_REQUEST['cat'].".php";
		}
		else
		{
			$pathcom.="index.php";
		}
	}

	else
	{
		$pathcom='views/components/control/index.php';
	}


	if(file_exists($pathcom))
	{
		include_once($pathcom);
	}

}
function loadModule($name)
{
	$pathModule="views/modules/".$name.".php";
	if(file_exists($pathModule))
	{
		include($pathModule);
	}
}

function loadClass($name)
{
	$name=ucfirst(strtolower($name));
	$pathClass='core/'.$name.'.php';
	if(file_exists($pathClass)){
		include_once($pathClass);
		$nameClass=new $name;
		return $nameClass;
	}else
	{
		return NULL;
	}
}
 ?>
 