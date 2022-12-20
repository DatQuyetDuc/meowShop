<?php 
	$conn=mysqli_connect("localhost","root","","banhang");
	if (isset($_GET['id'])) { 
		$sql="SELECT * FROM hanghoa WHERE id=".$_GET['id'];
		$ketqua=mysqli_query($conn,$sql);
		$row1=mysqli_fetch_assoc($ketqua);	
	}			
?>
<!DOCTYPE html>
<html>
<head>
	<title>Trang chủ</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="ckeditor/ckeditor.js"></script>
</head>
<body>
	<?php include('menu.php') ?>
	<h1>Sửa hàng hóa</h1>
	<form action="xulyhh.php" method="POST" >
		
		<input type="hidden" name="id" value="<?php echo $row1['id'];?>"><br>
		Tên mặt hàng: <input type="text" name="tenhang" value="<?php echo $row1['tenhang'];?>"><br>
		Số lượng: <input type="text" name="soluong" value="<?php echo $row1['soluong'];?>"><br>
		Đơn giá: <input type="text" name="dongia" value="<?php echo $row1['dongia'];?>"><br>
		Link ảnh cũ : <input type="text" name="anh1" value="<?php echo $row1['anh']; ?>"><br>
		Link mới: <input type="file" id="myfile" name="anh" value="<?php echo $row1['anh'];?>"><br>
		Danh mục: 
		<select name="iddanhmuc" >
			<?php
				$sql="SELECT * FROM danhmuc";
				$ketqua=mysqli_query($conn,$sql);
				while($row=mysqli_fetch_assoc($ketqua)){
					$sel='';
					if($row['id']==$row1['iddanhmuc']) $sel="  selected";
					echo '<option value="'.$row['id'].'"'.$sel.'>'.$row['tendanhmuc'].'</option>';
				}

			?>
		</select>
 
		<input  type="submit" value="sửa"  >
	</form>
</body>
</html>