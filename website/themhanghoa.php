<?php include "menu.php" ?>
<?php 
	
	if (!isset($_SESSION['vt'])){
	    echo'
    <p style="color:red; text-align:center; font-size:40px"><b>Bạn éo đủ quyền truy cập, hết :v</b></p>';
    exit();
	}
	else if(isset($_SESSION['vt'])){
	    
	if($_SESSION['vt']!="admin"){
	    echo'
    <b style="color:red; text-align:center; font-size:40px">Bạn éo đủ quyền truy cập, hết :v</b>';
    exit();
	}
	}
	if ($_SERVER["REQUEST_METHOD"]=="POST") {
		$tenhang=$_POST['tenhang'];$soluong=$_POST['soluong'];$dongia=$_POST['dongia'];$giamgia=$_POST['giamgia'];
		
		$iddanhmuc=$_POST['iddanhmuc'];
		$mota=$_POST['mota'];
		 //Bước 1: Tạo thư mục lưu file
    $error = array();
    $target_dir = "image/bg-images/";
    $target_file = $target_dir . basename($_FILES['fileUpload']['name']);
    // Kiểm tra kiểu file hợp lệ
    $type_file = pathinfo($_FILES['fileUpload']['name'], PATHINFO_EXTENSION);
    $type_fileAllow = array('png', 'jpg', 'jpeg', 'gif');
    if (!in_array(strtolower($type_file), $type_fileAllow)) {
        $error['fileUpload'] = "File bạn vừa chọn hệ thống không hỗ trợ, bạn vui lòng chọn hình ảnh";
    }
    //Kiểm tra kích thước file
    $size_file = $_FILES['fileUpload']['size'];
    if ($size_file > 5242880) {
        $error['fileUpload'] = "File bạn chọn không được quá 5MB";
    }

//
    if (empty($error)) {
        if (move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file)) {
            echo "Bạn đã upload file thành công";
            $flag = true;
        } else {
            echo "File bạn vừa upload gặp sự cố";
        }
    }

    if (isset($flag) && $flag == true) {
        
    }
		$sql="INSERT INTO hanghoa(tenhang,soluong,dongia,iddanhmuc,anh,mota,giamgia) VALUES('$tenhang','$soluong','$dongia','$iddanhmuc','$target_file','$mota','$giamgia')";
		$ketqua=mysqli_query($conn,$sql);
		echo '<script>
		alert("Thêm sản phẩm thành công");
		</script>';
		
}	

?>
<!DOCTYPE html>
<html>
<head>
	<title>thêm hàng hóa</title>
	
</head>
<body>
	<div class="col-sm-12 text-center" >
				
	</div>
	<div class="col-sm-12 form-group" style="margin-top: 90px; text-align:center; ">
	<hr> 
		<h1 >Thêm hàng hóa</h1>
		<table class="table">
    <thead>
											<tr>
												
												<th class="pro-thumbnail">tên mặt hàng</th>
												<th class="pro-title">Số lượng</th>
												<th class="pro-price">Đơn giá</th>
												<th class="pro-quantity">Giảm giá</th>
												<th class="pro-subtotal">Link ảnh</th>
												<th class="pro-subtotal">Danh mục</th>
											</tr>
										</thead>
	<tbody>
	<form action="themhanghoa.php" style="margin-bottom:30px" id="form_upload" method="POST" enctype="multipart/form-data">
	    <tr >
		<td class="pro-thumbnail"><input type="text" name="tenhang" ></td>
		<td class="pro-title"><input type="text" name="soluong"></td>
		<td class="pro-price"><input type="text" name="dongia"></td>
		<td class="pro-quantity"> <input type="float" name="giamgia" placeholder="từ 0.01 đến 0.99"></td>
		<td class="pro-subtotal"><input type="file" name="fileUpload"  id="fileUpload" ></td>
 
		<td class="pro-subtotal"> 
		<select name="iddanhmuc" >
			<?php
				$sql="SELECT * FROM danhmuc";
				$ketqua=mysqli_query($conn,$sql);
				while($row=mysqli_fetch_assoc($ketqua)){
					echo '<option value="'.$row['id'].'">'.$row['tendanhmuc'].'</option>';
				}

			?>
		</select>
		</td>
		</tr>
		
		<tr>
		    
		<textarea  style="color:deeppink; font-size:15px" placeholder="Phần mô tả" class="ckeditor col-12" name="mota" cols="90%" rows="10"></textarea> </td>
		  </tr>
		  <tr style="text-align:center">
		      <td class="pro-price">
		<input class="btn btn-black" type="submit" value="Thêm"></td>
		</tr>
		  
		
	</form>
		</tbody>
	</table>
	
	</div>
	<br><br>
	<hr> 
	<?php include "footer.php" ?>
</body>
</html>