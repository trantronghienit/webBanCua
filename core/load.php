<?php
function loadModel($name)
{
	$name=ucfirst(strtolower($name));
	$pathModel='models/'.$name.'.php';
	if (file_exists($pathModel)) {

		include_once($pathModel);
		$modelclass=new $name;
		return $modelclass;
	}
	else {
		return NULL;
	}
}
// function loadModules($name)
// {
// 	$name=ucfirst(strtolower($name));
// 	$pathModel='views/modules/'.$name.'.php';
// 	if (file_exists($pathModel)) {
// 		include($pathModel);
// 	}
// 	else {
// 		return NULL;
// 	}
// }

function loadModules($name)
{
	$pathModule="views/modules/".$name.".php";
	if(file_exists($pathModule))
	{
		include($pathModule);
	}
}
function loadTemplate($name)
{
	$pathTemplate="views/template/".$name.".php";
	if (file_exists($pathTemplate)) {
		include($pathTemplate);
	}
}
function loadComponent()
{
	$component='views/components/';
	if (isset($_REQUEST['option'])) {
		$component.=$_REQUEST['option']."/";
		if(isset($_REQUEST['id'])){
			$component.='detail.php';
		}else{
			if(isset($_REQUEST['cat'])){
			$component.='category.php';
			}else{
				$component.='index.php';

			}
		}
	}
	else {
		$component.='trangchu/index.php';
	}
	if(file_exists($component)){
		include_once($component);
	}else{
		header("location:404.php");
	}
}

function loadClass($name)
{
	$name=ucfirst(strtolower($name));
	$pathClass='core/'.$name.'.php';
	if (file_exists($pathClass)) {
		include_once($pathClass);
		$nameclass=new $name;
		return $nameclass;
	}
	else {
		return NULL;
	}
}

?>

