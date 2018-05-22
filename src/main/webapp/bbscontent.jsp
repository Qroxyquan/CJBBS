<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ContentDao"%>
<%@page import="entity.Content"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/animate.min.css" />
		<link rel="stylesheet" href="css/bbscontent.css" />

		<style>

		</style>
		<title>校园生活</title>
	</head>

	<body>

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
				<%
				int contentid =Integer.valueOf(request.getParameter("name"));
				ContentDao dao=new ContentDao();
				List<Content> contents=dao.find(contentid);
				Content content=contents.get(0);
				System.out.print(content.getContent());
				%>
		<div class="content col-md-8 col-md-offset-2">
			<div class="contenthead col-md-12">
				<h1><%=content.getTitle() %></h1>
			</div>
			

			<div class="content-block col-md-12">
			<div class="user-info col-md-3">

				<div class="col-md-8 col-sm-offset-2 text-center" style="margin-top: 10px;margin-left: 20px">

					<img class="img-circle" src="img/微信图片_20180517180307.jpg" height="200" width="200" />
					<p class="col-xs-offset-4" style="margin-top: 10%"><span style="align:center;font-weight: bolder">死肥猪
									<span style="font-style: italic;color: #4cae4c">[在线]</span></span>
					</p>
					<span class="label label-primary" style="margin-left:20%">草根阶层</span>
					<div style="padding-top: 10%;margin-left: 10%">
						<p><span style="color: gray">发帖数:</span>
							<span style="color: green">1</span>&nbsp;<span style="color: gray">原创分:</span><span style="color:green">56</span></p>
					</div>

					<div style="margin-left: 20%">

						<a href=" "><span><img src="img/私信.png" height="40" width="40"/></span></a>
						&nbsp;
						<a href="bbscontent.html"></a><span><img src="img/关注.png" height="40" width="40"/></span>

					</div>
					<div style="padding-left: 20%"><button type="button" class="btn btn-primary">关注</button></div>
				</div>
			</div>

				<div class="main-content col-md-9">
					<div class="col-md-12 floor">
						<p>1楼</p>
					</div>
					<div class="col-md-12 right-content">
                       <%=content.getContent() %>
					</div>
					<div class="col-md-12 time">
						<p>发表于2018-5-05-17 18:00</p>
					</div>
				</div>
			</div>
		
			<!--编辑器-->
			<div class="content-block col-md-8 ">
				<p class="col-md-4 " style="color: grey;margin-top: 2%">快速回复楼主</p>
				<div class="col-md-12 title">
					<span style="color: grey">标题</span>&nbsp;&nbsp;&nbsp;
					<div class="form-group" style="margin-top: -3%">
						<input class="form-control col-md-offset-1" type="text">

			</div>

				</div>

				<div class="col-md-12 editarea">
					<textarea name="editor1"  >回帖</textarea>

				</div>
			</div>
			<!--编辑器-->
		</div>





		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/wow.min.js"></script>
			<!--引入js文件-->
		<script src="ckeditor/ckeditor.js"></script>
		<script src="ckeditor/config.js"> </script>
		<script type="text/javascript">

			$('#myTaba').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})
		</script>
		<script type="text/javascript">
			new WOW().init();
			$('.carousel').carousel({
				interval: 4000
			})
		</script>
			<!--实例化编辑器-->
			<script type="text/javascript">
                CKEDITOR.replace( 'editor1' );
			</script>

	</body>

</html>