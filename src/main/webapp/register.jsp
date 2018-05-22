<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    
<!DOCTYPE html>
<html>
	<head>
	 <base href="<%=basePath%>">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/animate.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/component.css" />
		<link rel="stylesheet" href="css/normalize.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/register.css" />
		<title>用户注册</title>
	</head>
	<body>
			<div class="pageone" id="pageone">
			<nav class="navbar navbar-fixed-top my-navbar top-nav" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">  
		                    <span class="sr-only">切换导航</span>  
		                    <span class="icon-bar"></span>  
		                    <span class="icon-bar"></span>  
		                    <span class="icon-bar"></span>  
		                </button>
						<a class="navbar-brand" href="#">寸 金 印 象</a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active">
								<a href="index.html">首页</a>
							</li>
							<li>
								<a href="scbbs.html">校园生活</a>
							</li>
							<li>
								<a href="#">学术交流</a>
							</li>
							<li>
								<a href="#">休闲娱乐</a>
							</li>
							<li>
								<a href="#">交友表白</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
            
            <div class="col-md-6 col-md-offset-3 register-content">
            <div class="title-text">
						<h2>
							用户注册
						</h2>
					</div>
				<form class="form-horizontal register-form col-md-12"  method="post" action="registerservlet">
				<div class="register-left col-md-4">
					<div class="register-first-text col-md-12">
						<p>第一步：请选择一张美美的头像</p>
					</div>
					<div class="head-img col-md-8 col-md-offset-2">
						<img class="head-main-img img-circle " src="img/微信图片_20180517180307.jpg">
						<label for="file"class="btn btn-primary col-md-8 col-md-offset-2 headimg">上传头像</label>
						<input id="file" type="file"style="display:none">
						<input class="fade" id="photoCover" class="form-control" name="pic" readonly type="text">
					</div>
				</div>
				<div class="register-right col-md-8">
				<div class="register-sec-text col-md-12">
						<p>第二步：请填写以下信息即可完成注册啦</p>
				</div>
				<div class="form-group form-login col-md-12">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi " type="text" id="accountname" name="accountname" /><span id="remind"></span>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">请输入用户名</span>
					</label>
				</span>
				</div>
				<!-- ajax验证用户名合法 -->
				<script type="text/javascript">
		        $(function(){
		            $("#accountname").blur(function(){
		                var accountname = $(this).val();
		                if(accountname==""){
		                    $("#remind").html("用户名不能为空");
		                }else{
		                    // $.ajax方法实现
		                    $.ajax({
		                        url:"servlet",
		                        type:"get",
		                        data:"accountname="+accountname,
		                        dataType:"text",
		                        async:false,
		                        success:function(result){
		                            $("#remind").html(result);
		                        }
		                    });
		                    // $.get()方法实现，$.post方法也是一样的，post方法不能在地址后面直接传值
		                    //$.get("IsUserServlet","uname=" + uname, function(result){
		                    //  $("#remind").html(result);
		                    //},"text");
		
		                    // load()方式实现
		                    //$("#remind").load("IsUserServlet","uname=" + uname);
		                }
		            });
		        });
			    </script>
				<div class="form-group form-login col-md-12">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="password" id="input-4 password" name="password" />
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">请输入密码</span>
					</label>
				</span>
				</div>
				<div class="form-group form-login col-md-12">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="password" id="input-4 password1" name="password1" />
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">确认密码</span>
					</label>
				</span>
				</div>
				<div class="form-group form-login col-md-12">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="email" id="input-4 mail"  name="mail"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">邮箱</span>
					</label>
				</span>
				</div>			
				<div class="form-group form-login col-md-12">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="tel" id="input-4 phone" name="phone" />
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">手机号</span>
					</label>
				</span>
				</div>
				<div class="form-group form-login col-md-12">
					<div class="input gender-radio col-md-12">
					<span class="gender col-md-3">请选择性别</span>
				 	<label class="radio-inline gender-main">
					  <input type="radio"  id="inlineRadio1" value="男"   name="sex"> 男
					</label>
					<label class="radio-inline gender-main">
					  <input type="radio"  id="inlineRadio1" value="女"   name="sex"> 女
					</label>
					</div>
				</div>
				<div class="form-group form-login col-md-12">
					<div class="input major-radio col-md-12">
					<span class="major col-md-3">请选择系别</span>
					<select class="form-control major-main" name="major">
					  <option>会计系</option>
					  <option>经济与金融系</option>
					  <option>计算机系</option>
					  <option>外语系</option>
					  <option>音乐舞蹈系</option>
					  <option>艺术设计系</option>
					  <option>工程技术系</option>
					  <option>机电工程系</option>
					  <option>园林系</option>
					</select>
					</div>
				</div>
				<div class="form-group form-register col-md-12 register-button">
				<div class="col-sm-4 col-sm-offset-1">
					<button type="submit" class="btn btn-success btn-block">注册</button>					
				</div>
				<div class="col-sm-4 col-sm-offset-1">
					<button type="reset" class="btn btn-info btn-block">清空</button>					
				</div>
				</div>
				</div>
				</form>
            
            </div>
		
		</div>
		
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>		
		<script src="js/wow.min.js"></script>
		<script src="js/classie.js"></script>
	
    <script>
	    $(function () {
            $("#file").change(function (e) {
                var file = e.target.files[0] || e.dataTransfer.files[0];
                $('#photoCover').val(document.getElementById("file").files[0].name);
                if (file) {
                    var reader = new FileReader();
                    reader.onload = function () {
                        $(".head-main-img").attr("src", this.result);
                    }
                    reader.readAsDataURL(file);
                }
            });
        })
		</script>
    
		<script>
			(function() {
				if (!String.prototype.trim) {
					(function() {
						// Make sure we trim BOM and NBSP
						var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
						String.prototype.trim = function() {
							return this.replace(rtrim, '');
						};
					})();
				}

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
		</script>
	</body>
</html>
