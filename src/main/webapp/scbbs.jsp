<%@ page language="java" contentType="text/html; charset=GB2312"%>
<%@page import="dao.AccountDao"%>
<%@page import="entity.Account"%>
<%@page import="dao.ContentDao"%>
<%@page import="entity.Content"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.min.css" />
<link rel="stylesheet" href="css/bbslist.css" />
<script src="js/jquery.min.js"></script>
<script src="ckeditor/ckeditor.js"></script>
<script src="ckeditor/config.js"></script>
<title>校园生活</title>
</head>
<body>
<% request.setCharacterEncoding("GB2312"); %>
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
				int login =Integer.valueOf(request.getParameter("name"));
				System.out.print(login);
				AccountDao dao=new AccountDao();
				List<Account> accounts=dao.find(login);
				Account account=accounts.get(0);
				System.out.print(account.getPic());
				%>
		<div class="content col-md-8 col-md-offset-2">
			<div class="contenthead col-md-12">
				<div class="title-text col-md-5">
					<h1>校园生活</h1>
					<h3>在这里 分享你的生活趣事吧</h3>
				</div>
				
				<div class="user-info col-md-3 col-md-offset-3">
                  <div class="user-logo col-md-4 col-md-offset-4">
                     	<a href="#">
                     	<img class="user-mainlogo img-circle" src="<%=account.getPic()%>" />
                     	</a>
                     </div>
                    <div class="welcome col-md-12">
                    	<h2>欢迎您，<%=account.getAccountname()%></h2>
                    	<p><a href="#">帖子 10 </a><a href="#">关注 15 </a><a href="#">粉丝 30 </a></p>
                    </div>
				</div>
			</div>
			<div class="content-nav col-md-12">
		        <ul id="myTab" class="nav nav-tabs content-main-nav">
		            <li class="active">
		                <a href="#default" data-toggle="tab">帖子</a>
		            </li>
		            <li>
		                <a href="#super" data-toggle="tab">精华区</a>
		            </li>
		        </ul>
		    </div>
		    <!--main-content-->
   			 <div class="main-content col-md-12 tab-content" id="myTabContent">
        		<div class="default-content tab-pane fade in active" id="default">
           			 <table class="table table-striped content-table">
                <thead>
                <tr>
                    <th class="num-text">序号</th>
                    <th class="content-text">主题</th>
                    <th class="author-text">作者</th>
                    <th class="date-text">日期</th>
                </tr>
                </thead>
                <tbody>
                <%
				ContentDao dao1=new ContentDao();
				List<Content> contents=dao1.findAll();
				for (int i = 0; i < contents.size(); i++) {
				Content content=contents.get(i);
				String name=dao.findname(content.getUserID());
				%>
                <tr>
                    <td class="num-main-text"><%=content.getContentID() %></td>
                    <td class="content-main-text"><a href="bbscontent.jsp?name=<%=content.getContentID()%>"><%=content.getTitle() %><span class="label label-primary content-label">推荐</span><span class="label label-warning content-label">置顶</span></a></td>
                    <td class="author-main-text"><%=name %></td>
                    <td class="date-main-text">2018-05-17</td>
                </tr> 
                <%} %>             
                </tbody>
            </table>
        </div>
        <div class="super-content tab-pane fade" id="super">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>主题</th>
                    <th>作者</th>
                    <th>日期</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>001</td>
                    <td><a href="bbscontent.html">【劲爆】寸金印象要上线啦！</a></td>
                    <td>针叶林园</td>
                    <td>2018-05-17</td>
                </tr>               
                </tbody>
            </table>
        </div>
    </div>
    <!--main-content-->
    <div class="content-editor col-md-12">
    <!--编辑器-->
    <form  action="contentservlet" method="post">
        <div class="col-md-12 content-editor-title"><p>快速发帖</p></div>
        <div class="col-md-12 title">
            <div class="row">
                <div class="col-md-1 zhuti-text"><p>主题:</p></div>
                <div class="col-md-5 "><input type="text" class="form-control" name="title"></div>
                <div class="col-md-1 tip-text"><p>建议：不超20字</p></div>
                    <button class="btn btn-primary" type="submit">提交</button>
            </div>
        </div>

        <div class="col-md-12 editarea">
            <textarea name="editor1">发帖</textarea>
            <input id="editFileInput" name="file" type="file" style="display:none">
            <input class="fade" id="photoCover" class="form-control" name="pic" type="text">
              <input class="fade" id="UserID" class="form-control" name="UserID" type="text" value="<%=account.getUserID()%>">
        </div>
    </form>
    </div>
    <!--编辑器-->

</div>
<script type="text/javascript">
    CKEDITOR.replace('editor1');
</script>
<script>
    $(function () {
        $("#editFileInput").change(function (e) {
            var file = e.target.files[0] || e.dataTransfer.files[0];
            $('#photoCover').val(document.getElementById("editFileInput").files[0].name);
        });
    })
</script>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script type="text/javascript">

    $('#myTab a').click(function (e) {
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


</body>

</html>