 <!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>W2Wibu - Book Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
</head>
<body>
<div class="site-wrapper" id="top">
        <div class="site-header d-none d-lg-block">
				<?php  
					include("menu.php");
				?>
				</div>
	</div>
	<div class="col-sm-12 form-group" style="margin-top: 90px;margin-left:50px;margin-right:50px; text-align:center">
	<h1>Danh sách Khách hàng</h1>
	<table border="1" style="align:center;width=100% ">
			<tr>
				<th width="15%">STT</th>
				<th width="40%">Tên đăng nhập</th>
				<th width="35%">Email </th>
				<th width="20%">Xóa người dùng</th>
			</tr>
			<?php 
				$conn=mysqli_connect("localhost","root","","banhang");
				$sql="SELECT * FROM taikhoan WHERE vaitro!='admin'" ;
				$ketqua=mysqli_query($conn,$sql);
				
				
				while ($row = mysqli_fetch_assoc($ketqua)) {
					echo '<tr>';
					echo '<td style="width=50%">'.$row['id'].'</td>';
					echo '<td>'.$row['tendn'].'</td>';
					echo '<td>'.$row['email'].'</td>';
					echo '<td><a href="xoauser.php?id='.$row['id'].'">Xóa</a></td>';
					echo '</tr>';
				}
			?>
	</table>
</body>
</html>