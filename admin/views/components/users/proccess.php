<?php
$users=loadModel('users');
$myclass=loadClass('myclass');
$author=(isset($_SESSION['user_id']))?$_SESSION['user_id']:1;
if(isset($_POST['THEM']))
{
	$is_error=true;
	$data=array(
		'fullname'=>$_POST['fullname'],
		'username'=>$_POST['username'],
		'email'=>$_POST['email'],
		'phone'=>$_POST['phone'],
		'gender'=>($_POST['gender']+1),
		'status'=>$_POST['status'],
		'trash'=>1,
		'access'=>1,
		'created_at'=>$myclass->ngayhientai(),
		'created_by'=>$author,
		'updated_at'=>$myclass->ngayhientai(),
		'updated_by'=>$author

	);
	if ($_POST['password1']==$_POST['password2']) {
		$data['password']=sha1($_POST['password1']);
	}
	else{
		$is_error=false;
	}
	if ($is_error==true) {
		$name_img=$_FILES["img"]['name'];
		$temp_img=$_FILES["img"]['tmp_name'];
		$data['img']=$name_img;
		move_uploaded_file($temp_img,"../public/imgs/users/".$name_img);
		$users->users_insert($data);
	}
	else{
		//header('location: index.php?option=users&cat=insert');
	}
}
if(isset($_POST['CAPNHAT']))
{
	$id=$_REQUEST['id'];
        $is_error=true;
        $data=array(
            'fullname'=>$_POST['fullname'],            
            'username'=>$_POST['username'],
            'email'=>$_POST['email'],
            'phone'=>$_POST['phone'],
            'gender'=>($_POST['gender']+1),
            'status'=>$_POST['status'],            
            'updated_at'=>$myclass->ngayhientai(),
            'updated_by'=>$author,
        );
        $row=$users->users_detail($id);
        if($row['password']!=sha1($_POST['passwordcu']))
        {
             $is_error=false;
        }
        if($_POST['password1']==$_POST['password2'])
        {
            $data['password']=sha1($_POST['password1']);
        }
        else
        {
            $is_error=false;
        }
        if($is_error==true)
        {
            if(strlen($_FILES['img']['name']))
            {
                $name_img=$_FILES['img']['name'];
                $temp_img=$_FILES['img']['tmp_name'];
                $data['img']=$name_img;
                move_uploaded_file($temp_img, "../public/imgs/users/".$name_img);
            }
            
           $users->users_update($data,$id);
          
        }
        else
        {
           // header('location:index.php?option=users&cat=update&id='.$id);
        }
    }
?>
 <script>
 	//document.location='index.php?option=users';
 </script>