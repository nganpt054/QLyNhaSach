<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> Đăng nhập hệ thống</title>
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
        crossorigin="anonymous"/>
<style> 
   body{
    background-color: rgb(0, 110, 183)
   }
   .row{ 
      margin-left: -10px;
       margin-right: -10px;
      }
   .signin{
      width: 66.66666667%;
      }
    .signin-logo{
    margin-top: 50px;
    text-align: center;
    }
    .heading{
    font-family: -webkit-pictograph;
    font-size: 25px;
    color: #006eb7;
    margin-bottom: 20px;
    }
    .hitec-form-signin{
    width: 290px;
    border: 5px solid #6bb9f0;
    background: #f7f7f7;
    padding: 15px;
    height: 332px;
    margin: 0 auto;
    margin-top: 142px;
    position: relative;
    }
    .LoginID{
          margin-bottom: 10px;
    }
    .password{
        margin-bottom: 10px;
    }
    label{
        display: inline-block;
        max-width: 100%;
        font-weight: inherit;
    }
    .input-lg{
        height: 38px;
        padding: 8px 12px;
        font-size: 15px;
       line-height: 2;
       border-radius: 4px;
    }
    .from{
    width: 190.333333%;
    margin-top: -43%;
    }
    .form-group{
       margin-bottom: 10px;
    }
    .form-control {
    display: block; 
    width: 93%;
    height: 27px;
    padding: 4px 10px;
    font-size: 12px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #3999cd;
    border-radius: 2px;
    }
  .hitec-form-signin .btn-custom {
    margin: 20px auto;
}
.btn-block {
    display: block;
    width: 100%;
}
.btn-lg, .btn-group-lg>.btn {
    padding: 8px 12px;
    font-size: 15px;
    line-height: 1.3333333;
    border-radius: 4px;
}
.btn-primary {
    color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
}
.hitec-form-signin .btn-custom {
    margin: 20px auto;
}
  footer {
    padding-top: 50px;
    color: #fff;
    margin: auto;
    text-align: center;
    font-size: 10px;
}
</style>
</head>
<body>
<div class="row">
 <div class="signin">
    <div class="signin-logo"> 
            <a href="https://ums.husc.edu.vn/">  
            <img src="img/logo.png" width="112px" height="112px" >
            </a>
      </div>
    <div class="signin-img" align="center">
         <img src="img/image1.png">
        </div>
     <div class="from">
          <form class="hitec-form-signin">
                        <h2 class="heading">Sinh viên</h2>
                        <div class="form-group">
                        <label class="LoginID"> Mã sinh viên: </label>
                             <input type="text" id="loginID" name="loginID" class=" form-control input-lg" placeholder="Mã sinh viên" required autofocus value="" />
                        </div>
                        <div class="form-group">
                        <label class="password">   Mật khẩu:</label>
			               <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Mật khẩu" required value="" />
                        </div>
                        <div class="form-group">
                            <span class="text-danger"></span>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block btn-custom" type="submit">Đăng nhập</button>                     
          </form>  
       </div>          
     </div>
     </div>
    <footer>
            <div>
                <p><i class="far fa-copyright"></i></span> Bản quyền: <a href="https://ums.husc.edu.vn/" style="color:#fff" target="_blank">Trường Đại học Khoa học - Đại học Huế</a></p>
                <p><i class="fas fa-home"></i> Địa chỉ: 77 Nguyễn Huệ, Thành phố Huế, Tỉnh Thừa Thiên Huế, Việt Nam</p>
                <p><i class="fas fa-mobile-alt"></i></span> Điện thoại: (84) 0234.3823290 – Fax: (84) 0234.3824901</p>                
            </div>
    </footer>
</body>
</html>