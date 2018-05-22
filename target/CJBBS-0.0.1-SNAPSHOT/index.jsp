<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/animate.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/component.css" />
		<link rel="stylesheet" href="css/normalize.css" />
		<link rel="stylesheet" href="css/index.css" />
		<style>

		</style>
		<title>印象寸金</title>
	</head>

	<body>
    
		
	<div class="side-nav">
	<ul class="nav-side-nav">
		<li>
			<a href="#pageone" class="tooltip-side-nav select one"></a>
		</li>
		<li>
			<a href="#pagetwo" class="tooltip-side-nav default two"></a>
		</li>
		<li>
			<a href="#pagethree" class="tooltip-side-nav default three"></a>
		</li>		
	</ul>
    </div>

		
	<!--pageone -->
		<div class="pageone" id="pageone">
			<nav class="navbar navbar-fixed-top my-navbar" role="navigation">
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
            
            <div class="col-md-12 login-register tab-content">
			<div class="row  wow fadeInRight tab-pane fade in active "id="login" data-wow-duration="3s">
				<div class="col-md-3 login col-md-offset-8 " id="login" >
					<div class="title-text">
						<h2>
							用户登录
						</h2>
					</div>
				<form class="form-horizontal"  method="post" action="loginServlet">
				<div class="form-group form-login">
				<span class="input input--hoshi">
				<% String name=request.getParameter("name"); %>
					<input class="input__field input__field--hoshi" type="text" id="input-4" name="accountname" value="<%= name%>"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">用户名</span>
					</label>
				</span>
				</div>
				<div class="form-group form-login">
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="password" id="input-4" name="password" />
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">密码</span>
					</label>
				</span>
				</div>
				<div class="form-group form-login">
				<div class="col-sm-10 col-sm-offset-1">
					<button type="submit" class="btn btn-success btn-block">登录</button>
				</div>
				</div>
				</form>
				<div class="register-text">
					<p>
						<a href=""  data-toggle="tab">还没有账户？快来注册吧</a>
					</p>
				</div>
				</div>
			</div>	
			</div>
		</div>
		<!--pageone -->

		<!--pagetwo -->
		<div class="pagetwo" id="pagetwo">
			<div class="pagetwobg"></div>
            <div class="twopage-text wow bounceIn"data-wow-duration="3s">
            	<h1 class="pagetwo-text-h1">
            		请选择一个您感兴趣的模块进入论坛吧！
            	</h1>
            </div>
            <div class="row col-md-11 col-md-offset-1 pagetwo-bbs">
            	<div class="col-md-3 wow fadeInLeft "data-wow-duration="3s">
            		<div class="hovereffect">
            		<img src="img/校园生活.jpg" class="img-responsive" style="width: 100%  " />
					       <div class="overlay">
					           <h2>校园生活</h2>
					           <a class="info" href="scbbs.html">点我点我</a>
					        </div>
            		</div>
            			<div  class="pagetwo-bbs-text">
            				<h1 class="pagetwo-bbs-h1">校园生活</h1>
            				<h3 class="pagetwo-bbs-h3">分享你的生活趣事</h3>
            			</div>
            	</div>
                    <div class="col-md-1"></div>
            	 	<div class="col-md-3 wow bounceIn"data-wow-duration="3s">
            		<div class="hovereffect">
            		<img src="img/学术交流.jpg" class="img-responsive" style="width: 100%  " />
					       <div class="overlay">
					           <h2>学术交流</h2>
					           <a class="info" href="#">点我点我</a>
					        </div>
            		</div>
            			<div class="pagetwo-bbs-text">
            				<h1 class="pagetwo-bbs-h1">学术交流</h1>
            				<h3 class="pagetwo-bbs-h3">这里是学霸的聚集地哦</h3>
            			</div>
            	</div>
                     <div class="col-md-1"></div>
            	 	<div class=" col-md-3 wow fadeInRight"data-wow-duration="3s">
            		<div class="hovereffect">
            		<img src="img/休闲娱乐.jpg" class="img-responsive" style="width: 100%  " />
					       <div class="overlay">
					           <h2>休闲娱乐</h2>
					           <a class="info" href="#">点我点我</a>
					        </div>
            		</div>
            			<div class="pagetwo-bbs-text">
            				<h1 class="pagetwo-bbs-h1">休闲娱乐</h1>
            				<h3 class="pagetwo-bbs-h3">来不及解释了 快上车</h3>
            			</div>
            	</div>
            </div>
		</div>
		<!--pagetwo -->
		
		<!--pagethree -->
		<div class="pagethree" id="pagethree">
           <div class="pagethree-text col-md-12  wow bounceIn"data-wow-duration="3s">
            	<h1 class="pagethree-text-h1">
            		当然，你还可以选择下面的模块
            	</h1>
            </div>
            <div class="row col-md-11 col-md-offset-1  pagetwo-bbs">
            	<div class="col-md-3 col-md-offset-4  wow fadeInLeft "data-wow-duration="3s">
            		<div class="hovereffect">
            		<img src="img/我要交友1.jpg" class="img-responsive" style="width: 100%  " />
					       <div class="overlay">
					           <h2>我要交友</h2>
					           <a class="info" href="#">点我点我</a>
					        </div>
            		</div>
            			<div  class="pagethree-bbs-text">
            				<h1 class="pagetwo-bbs-h1">我要交友</h1>
            				<h3 class="pagetwo-bbs-h3">有趣的灵魂万里挑一</h3>
            			</div>
            	</div>
            </div>
            <div class="row col-md-11 col-md-offset-1 pagetwo-bbs">
            	<div class="col-md-3 col-md-offset-4  wow fadeInLeft "data-wow-duration="3s">
            		<div class="hovereffect">
            		<img src="img/我要表白1.jpg" class="img-responsive" style="width: 100%  " />
					       <div class="overlay">
					           <h2>我要表白</h2>
					           <a class="info" href="#">点我点我</a>
					        </div>
            		</div>
            			<div  class="pagethree-bbs-text">
            				<h1 class="pagetwo-bbs-h1">我要表白</h1>
            				<h3 class="pagetwo-bbs-h3">把心中的爱说出来</h3>
            			</div>
            	</div>
            </div>
		</div>
		<!--pagethree -->
		
		<!--foot-->
		<div class="foot col-md-12" id="foot">
			<div class="col-md-1 col-md-offset-3 maker-logo"><img src="img/针叶林.gif"></div>
			<div class="col-md-4 maker-info">  
				<p>版权所有：针叶林园</p>
      			<p>地址：广东省湛江市麻章区学智路2号 广东海洋大学寸金学院</p>
      			<p><a>关于网页</a>丨<a>联系我们</a>丨<a>网站维护</a></p>
			</div>
			<div class="col-md-1 maker-logo"><img src="img/微信图片_20180517165342.jpg" class="maker-code"><p>扫码关注我们</p></div>
			</div>
			
		</div>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>		
		<script src="js/wow.min.js"></script>
		<script src="js/classie.js"></script>
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
		<script type="text/javascript">
    $(function() {
    var one = $(".pageone").offset().top;
	var two = $(".pagetwo").offset().top;
	var three = $(".pagethree").offset().top;
	var four = $(".foot").offset().top;

	$(window).scroll(function() {
		var this_scrollTop = $(this).scrollTop();
	    if(this_scrollTop > one && this_scrollTop < two) {
		$(".one").addClass("select").parent().siblings().children().removeClass("select");
		$(".one").removeClass("default").parent().siblings().children().addClass("default");
		}else if(this_scrollTop > two && this_scrollTop < three) {
		$(".two").addClass("select").parent().siblings().children().removeClass("select");
		$(".two").removeClass("default").parent().siblings().children().addClass("default");
		}else if(this_scrollTop>three&& this_scrollTop<four){ 
		$(".three").addClass("select").parent().siblings().children().removeClass("select");  
        $(".three").removeClass("default").parent().siblings().children().addClass("default"); 
		}
	    });
    });
	</script>
	
	
    <script type="text/javascript">
    $(".tooltip-side-nav").click(function() {
	$(this).addClass("select").parent().siblings().children().removeClass("select");
	console.log($(".tooltip-side-nav"));
	$(this).removeClass("default").parent().siblings().children().addClass("default");
    });
    </script>
    
    
	<script type="text/javascript"> 
	        $(function(){  
            //锚点跳转滑动效果  
            $('.tooltip-side-nav').click(function() {  
                console.log(this.pathname)  
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {  
                    var $target = $(this.hash);  
                    $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');  
                    if ($target.length) {  
                        var targetOffset = $target.offset().top;  
                        $('html,body').animate({  
                                    scrollTop: targetOffset  
                                },  
                                1000);  
                        return false;  
                    }  
                }  
            });  
        })  
	</script>
	
	
		<script type="text/javascript">
			new WOW().init();
			$('.carousel').carousel({
				interval: 4000
			})
			$(window).scroll(function() {
				if($(".navbar").offset().top > 300) {
					$(".navbar-fixed-top").addClass("top-nav");
				} else { $(".navbar-fixed-top").removeClass("top-nav"); }
			})
		</script>
	</body>

</html>