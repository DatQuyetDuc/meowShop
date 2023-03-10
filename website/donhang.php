<?php
    include('menu.php');
?>
<?php
    // Đếm số đơn hàng được order
    $Quanlity_Order = 0;
    $Statement_Order = "SELECT COUNT(idhoadon) AS Quanlity_Order FROM donhang";
    $Query_Order =mysqli_query($conn, $Statement_Order);
    $Display_Order = mysqli_fetch_assoc($Query_Order);
    $Quanlity_Order = $Display_Order['Quanlity_Order'];
    // Đếm tổng số sản phẩm có trên giỏ hàng
    $Quanlity_Product = 0;
    $Statement_Product = "SELECT COUNT(id) AS Quanlity_Product FROM hanghoa";
    $Query_Product =mysqli_query($conn, $Statement_Product);
    $Display_Product = mysqli_fetch_assoc($Query_Product);
    $Quanlity_Product = $Display_Product['Quanlity_Product'];
    // Đếm tổng số danh mục tòn tại trong của hàng
    $Quanlity_Catalog = 0;
    $Statement_Catalog = "SELECT COUNT(id) AS Quanlity_Catalog FROM danhmuc";
    $Query_Catalog =mysqli_query($conn, $Statement_Catalog);
    $Display_Catalog = mysqli_fetch_assoc($Query_Catalog);
    $Quanlity_Catalog = $Display_Catalog['Quanlity_Catalog'];
    // Đếm tổng số khách hàng của cửa hàng
    $Quanlity_Users = 0;
    $Statement_Users = "SELECT COUNT(id) AS Quanlity_Users FROM taikhoan";
    $Query_Users =mysqli_query($conn, $Statement_Users);
    $Display_Users = mysqli_fetch_assoc($Query_Users);
    $Quanlity_Users = $Display_Users['Quanlity_Users'];
?>
<div class="row">
    <div class="col-12">
        <div>
            <h4 class="header-title mb-3" style="text-align:center; color: deeppink"><b>Welcome !</b></h4>
        </div>
    </div>
</div>
<?php
    if($_SESSION['vt']=="admin"){
        echo "<div class='row'>
        <div class='col-12'>
            <div>
                <div class='card-box widget-inline'>
                    <div class='row'>
                        <div class='col-xl-3 col-sm-6 widget-inline-box'>
                            <div class='text-center p-3'>
                                <h2 class='mt-2'><i class='text-primary mdi mdi-access-point-network mr-2'></i> <b>$Quanlity_Order</b></h2>
                                <p class='text-muted mb-0'>Đơn Hàng</p>
                            </div>
                        </div>
    
                        <div class='col-xl-3 col-sm-6 widget-inline-box'>
                            <div class='text-center p-3'>
                                <h2 class='mt-2'><i class='text-teal mdi mdi-airplay mr-2'></i> <b>$Quanlity_Product</b></h2>
                                <p class='text-muted mb-0'>Sản Phẩm</p>
                            </div>
                        </div>
    
                        <div class='col-xl-3 col-sm-6 widget-inline-box'>
                            <div class='text-center p-3'>
                                <h2 class='mt-2'><i class='text-info mdi mdi-black-mesa mr-2'></i> <b>$Quanlity_Catalog</b></h2>
                                <p class='text-muted mb-0'>Danh Mục</p>
                            </div>
                        </div>
    
                        <div class='col-xl-3 col-sm-6'>
                            <div class='text-center p-3'>
                                <h2 class='mt-2'><i class='text-danger mdi mdi-cellphone-link mr-2'></i> <b>$Quanlity_Users</b></h2>
                                <p class='text-muted mb-0'>Người Dùng</p>
                            </div>
                        </div>
    
                    </div>
                </div>
            </div>
        </div>
    </div>";
    }
?>
<div class="row">
    <div class="col-12">
    <table  id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead class="bg-light">
    <tr>
        <th>Mã đơn hàng</th>
        <th>Ngày mua</th>
        <th>Sản phẩm</th>
        <th>Chi Tiết</th>
    </tr>
    </thead>

    <tbody class="font-14">
        <?php
            $UID= $_SESSION['id'];
            if($_SESSION['vt']=="khach"){
                $Statement_Order = "SELECT * FROM donhang WHERE idkhachhang= $UID";
            }
            else {
                $Statement_Order = "SELECT * FROM donhang";
            }
            $Query_Order = mysqli_query($conn, $Statement_Order);
            while ($Display_Order = mysqli_fetch_assoc($Query_Order)){
                $Statement_OrderDetail = "SELECT * FROM chitiethoadon WHERE idhd =".$Display_Order['idhoadon'];
                $Query_OrderDetail = mysqli_query($conn, $Statement_OrderDetail);
                echo "<tr>
                <td><a href='javascript: void(0);' class='text-primary ml-3'>VKU$Display_Order[idhoadon]</a> </td>
                <td>$Display_Order[ngay]</td>
                <td class='text_product_hidden'>";
                while($Display_OrderDetail = mysqli_fetch_assoc($Query_OrderDetail)){
                    $Statement_Product = "SELECT * FROM hanghoa WHERE id =".$Display_OrderDetail['idsanpham'];
                    $Query_Product = mysqli_query($conn, $Statement_Product);
                    $Display_Product = mysqli_fetch_assoc($Query_Product);
                    echo "$Display_Product[tenhang], ";
                }
                echo '</td><td>
                        <a href="chitiethoadon.php?id='.$Display_Order['idhoadon'].'">Xem</a>
                </td>
                <td>
                        <a href="xoadh.php?id='.$Display_Order['idhoadon'].'">Xoa</a>
                </td>';
            echo    "
            </tr>";
            }
            ?>
    </tbody>
</table>
    </div>
</div>

<!--end row -->

<?php
    include('footer.php');
?>