
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MeowShop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/css.css" />
    <link rel="shortcut icon" type="image/x-icon" href="image/bg-images/cat2.png">
    <style>
   .nut-mo-chatbox {
   background-color: #555;
   color: white;
   padding: 16px 20px;
   border: none;
   cursor: pointer;
   opacity: 0.8;
   position: fixed;
   bottom: 23px;
   right: 28px;
   width: 280px;
 }
/* Ẩn chatbox mặc định */
 .Chatbox {
   display: none;
   position: fixed;
   bottom: 0;
   right: 15px;
   border: 3px solid #f1f1f1;
   z-index: 9;
 }
/* Thêm style cho form */
 .form-container {
   max-width: 300px;
   padding: 10px;
   background-color: white;
 }
/* thiết lập style textarea */
 .form-container textarea {
   width: 100%;
   padding: 15px;
   margin: 5px 0 22px 0;
   border: none;
   background: #f1f1f1;
   resize: none;
   min-height: 15px;
 }
/*thiết lập style cho textarea khi được focus */
 .form-container textarea:focus {
   background-color: #ddd;
   outline: none;
 }
/* Thiết lập style cho nút trong form*/
 .form-container .btn {
   background-color: #4CAF50;
   color: white;
   padding: 16px 20px;
   border: none;
   cursor: pointer;
   width: 100%;
   margin-bottom:10px;
   opacity: 0.8;
 }/* Thiết lập màu nền cho nút đóng chatbox */
 .form-container .nut-dong-chatbox {
   background-color: red;
 }
/* Thêm hiệu ứng hover cho nút*/
 .form-container .btn:hover, .nut-mo-chatbox:hover {
   opacity: 1;
 }
 .Chatbox{
  background-color: #f5f8f9;
  padding: 10px 20px;
  width: 350px;
  height: 500px;
  overflow-y: scroll;
}

#message{
  width: 100%;
}
/*căn phải tn  đầu */
.matt-line{
  max-width: 70%;
  min-width: 10%;
  display: inline-block;
  font-size: .85em;
  position: relative;
  margin: 20% 0 3% 0;
  animation: scaler 150ms ease-out;
}
/* tin nhắn */
.matt-line p{
  background-color: #444;
  color: #fff;
  padding: 10px;
  border-radius: 10px;
  word-wrap: break-word;
  font-weight: 500;
}
#message .first p{
  background-color: #e5eaec;
  color: #222;
  font-size: .85em;
  border-radius: 10px;
  position: relative;
  padding: 10px;
  margin: 1% 0;
  max-width: 70%;
  min-width: 10%;  
  float: right;
  word-wrap: break-word;
  clear: both;
  animation: scaler 150ms ease-out;
  font-weight: 500;
  margin-bottom: -40px;
  margin-top: 0px;
}
    </style>
    <script>/*Hàm Mở Form*/
 function moForm() {
  document.getElementById("myForm").style.display = "block";
}
/*Hàm Đóng Form*/
function dongForm() {
  document.getElementById("myForm").style.display = "none";
}</script>
</head>

<body>
    
    <div class="site-wrapper" id="top">
       
            <?php include "menu.php" ?>
           
            </div>
        
        <section class="hero-area hero-slider-1">
            <div class="sb-slick-slider" data-slick-setting='{
                            "autoplay": true,
                            "fade": true,
                            "autoplaySpeed": 3000,
                            "speed": 3000,
                            "slidesToShow": 1,
                            "dots":true
                            }'>
				 <div class="single-slide bg-ghost-white">
                    <div class="container">
                        <div class="home-content text-center text-sm-left position-relative">
                        <video poster="image/video/cat.mp4" id="bgvid" playsinline="" autoplay="" muted="" loop="">
				        <source src="https://www.ingridkuhn.com/themes/petz/videos/video.webm" type="video/mp4">
                        <source src="videos/video.webm" type="video/webm">
				
			            </video>
                           
                            
                        </div>
                    </div>
                </div>
               
            </div>
        </section>
        
        <section class="mb--30">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-shipping-fast"></i>
                            </div>
                            <div class="text">
                                <h5>Free Shipping nội thành Đà Nẵng</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-redo-alt"></i>
                            </div>
                            <div class="text">
                                <h5>Đảm bảo hoàn tiền</h5>
                                <p>hoàn tiền 100%</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-piggy-bank"></i>
                            </div>
                            <div class="text">
                                <h5>Thanh toán khi giao hàng</h5>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-life-ring"></i>
                            </div>
                            <div class="text">
                                <h5>Số điện thoại hỗ trợ</h5>
                                <p>0915970687</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-margin">
            <h2 class="sr-only">Promotion Section</h2>
            <div class="container">
                <div class="row space-db--30">
                    <div class="col-lg-6 col-md-6 mb--30">
                        <a href="#" class="promo-image promo-overlay">
                            <img src="image/bg-images/banner1.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-6 mb--30">
                        <a href="#" class="promo-image promo-overlay">
                            <img src="image/bg-images/banner2.jpg" alt="">
                        </a>
                    </div>
                    

                </div>
            </div>
        </section>
        
        <section class="section-padding">
            <h2 class="sr-only">Home Tab Slider Section</h2>
            <div class="container">
                <div class="sb-custom-tab">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="shop-tab" data-toggle="tab" href="#shop" role="tab"
                                aria-controls="shop" aria-selected="true">
                                Bán chạy
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                        
                    </ul>
                    
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane show active" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                                data-slick-setting='{
                            
                            "autoplaySpeed": 500,
                            "slidesToShow": 5,
                            "rows":2
                            
                        }' data-slick-responsive='[
                            {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                            {"breakpoint":768, "settings": {"slidesToShow": 2} },
                            {"breakpoint":480, "settings": {"slidesToShow": 1} },
                            {"breakpoint":320, "settings": {"slidesToShow": 1} }
                        ]'>
                <?php 
                
                
                // PHẦN XỬ LÝ PHP
                // $conn = mysqli_connect("localhost", "root" ,"", "banhang"); : đã include menu.php
         
        // BƯỚC 2: TÌM TỔNG SỐ RECORDS
        $result = mysqli_query($conn, 'select count(id) as total from hanghoa');
        $row = mysqli_fetch_assoc($result);
        $total_records = $row['total'];
         
        // BƯỚC 3: TÌM LIMIT VÀ CURRENT_PAGE
        $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
        $limit = 10;
         
        // BƯỚC 4: TÍNH TOÁN TOTAL_PAGE VÀ START
        // tổng số trang
        $total_page = ceil($total_records / $limit);
         
        // Giới hạn current_page trong khoảng 1 đến total_page
        if ($current_page > $total_page){
            $current_page = $total_page;
        }
        else if ($current_page < 1){
            $current_page = 1;
        }
         
        // Tìm Start
        $start = ($current_page - 1) * $limit;
         
        // BƯỚC 5: TRUY VẤN LẤY DANH SÁCH TIN TỨC
        // Có limit và start rồi thì truy vấn CSDL lấy danh sách tin tức
        $result = mysqli_query($conn, "SELECT * FROM hanghoa LIMIT $start, $limit");
                
				
				while ($row = mysqli_fetch_assoc($result)) {
                    $kqkm= $row['dongia']-$row['dongia']*$row['giamgia'] ;
                    $giamgia= $row['giamgia']*100;
					echo '<div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="#" class="author">
                                                jpple
                                            </a>
                                            <h3><a href="chitietsp.php?id='.$row['id'].'">'.$row['tenhang'].'</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="'.$row['anh'].'" alt="">
                                                <div class="hover-contents">
                                                    <a href="chitietsp.php?id='.$row['id'].'" class="hover-image">
                                                        <img src="'.$row['anh'].'"  alt="">
                                                    </a>
                                                    
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">'.$kqkm.'</span>
												
                                                <del class="price-old">'.$row['dongia'].'</del>
                                                <span class="price-discount">'.$giamgia.'%</span>
                                            </div>
                                        </div>
                                    </div>
                                
                            </div>';
				}
            ?>
            </div>
            <br><br>
            <div class="container">
           <?php 
            // PHẦN HIỂN THỊ PHÂN TRANG
			if ($current_page > 1 && $total_page > 1){
    echo '<a  class="btn btn-black" href="index.php?page='.($current_page-1).'">Prev</a> | ';
}
 
// Lặp khoảng giữa
for ($i = 1; $i <= $total_page; $i++){
    // Nếu là trang hiện tại thì hiển thị thẻ span
    // ngược lại hiển thị thẻ a
    if ($i == $current_page){
        echo '<span  class="btn btn-black">'.$i.'</span> | ';
    }
    else{
        echo '<a  class="btn btn-black" href="index.php?page='.$i.'">'.$i.'</a> | ';
    }
}
 
// nếu current_page < $total_page và total_page > 1 mới hiển thị nút prev
if ($current_page < $total_page && $total_page > 1){
    echo '<a  class="btn btn-black" href="index.php?page='.($current_page+1).'">Next</a> | ';
}
                        ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Deal of the day 
        ===================================== -->
        <button class="nut-mo-chatbox" onclick="moForm()">Chat</button>
 <div class="Chatbox" id="myForm">
   <form action="" class="form-container">
     <h1>Chatbox</h1>
    <label for="msg"><b>Lời Nhắn</b></label>
    <section class="bot">
        <ul id="message">
          <div class="time"><p></p></div>
          <div class="matt-line"><p>Nếu thắc mắc, hãy liên hệ ngay với chúng tôi</p></div>
          <div class="first"><p>Shop quá tuyệt vời</p></div>
          <div class="matt-line"><p>Sản phẩm của shop luôn là tốt nhất, mong bạn ủng hộ sản phẩm</p></div>

        </ul>
    </section>
     <textarea placeholder="Bạn hãy nhập lời nhắn.." name="msg" required></textarea>
    <button type="submit" class="btn">Gửi</button>
     <button type="button" class="btn nut-dong-chatbox" onclick="dongForm()">Đóng</button>
</div>
   </form>
    <?php include "footer.php" ?>
    
    <!-- Use Minified Plugins Version For Fast Page Load -->
</body>


<!-- Mirrored from demo.hasthemes.com/pustok-preview/pustok/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 23 Nov 2020 14:58:49 GMT -->
</html>