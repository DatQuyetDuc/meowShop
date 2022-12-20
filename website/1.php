<?php include"menu.php"?>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from demo.hasthemes.com/pustok-preview/pustok/ index.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 23 Nov 2020 14:58:10 GMT -->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>W2Wibu - Book Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="image/bg-images/cat2.png">

    <script src="http://localhost/website/ckeditor5-build-classic/ckeditor.js"></script>
   
    <script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>
    <script>
$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
</head>

<body>
<form action="" method="post">
	<table>
		<tr>
			<td colspan="2"><h3>Thêm bài viết mới</h3></td>
		</tr>	
		<tr>
			<td nowrap="nowrap">Tiêu đề bài viết :</td>
			<td><input type="text" id="title" name="title"></td>
		</tr>
		<tr>
			<td nowrap="nowrap">Nội dung :</td>
			<td><textarea name="post_content" id="post_content" rows="10" cols="150"></textarea></td>
		</tr>
		<tr>
			<td nowrap="nowrap">Public bài viết ? :</td>
			<td><input type="checkbox" id="is_public" name="is_public" value="1"> public</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="btn_submit" value="Thêm bài viết"></td>
		</tr>

	</table>
	
</form>
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace( 'post_content' );
</script>
</body>
</html>