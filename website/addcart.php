<?php
include("menu.php");
?>
<?php
$id=$_GET['id'];
if (!isset($_SESSION['ten'])){
    echo'
    <script type="text/javascript">
           window.location = "login.php"
      </script>';
}
$tendn=$_SESSION['ten'];

if(isset($_SESSION['ten'])){
   echo '<p style="text-align:center; font-size:70px ;color: deeppink; margin-top:30px"><b>Thêm vào giỏ hàng thành công</b></p>';
if(isset($_SESSION['cart'][$id][$tendn]))
{
$qty = $_SESSION['cart'][$id][$tendn] + 1;
}
else
{
$qty=1;
$_SESSION['dem'] = $qty;
$_SESSION['dem']++;

}
$_SESSION['cart'][$id][$tendn]=$qty;

exit();
}
else header("Location:login.php");
exit();
?>