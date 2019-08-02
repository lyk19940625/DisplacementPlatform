<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>首页</title>
	<link rel="stylesheet" type="text/css" href="./css/css.css">
	<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
	<script type="text/javascript">
	$(function(){
		$('.nav_mini ul li').hover(function(){
			$(this).find('.two_nav').show(100);
		},function(){
			$(this).find('.two_nav').hide(100);
		})
	})
	</script>
</head>
<body>
	<div class="top">
		<div class="top_text">
		<a href="Login.jsp">退出登录</a>
			<a href="info/check">欢迎您：&nbsp;${user.uname}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		    
		</div>
	</div>
	
	<div class="search">
		<div class="logo"><a href="index.jsp"><img src="./images/logo.jpg" alt=""></a></div>
		<div class="search_on">
		  <form action="search/goods" method="get"  name="search">
			<div class="se">
				<input type="text" name="search" class="lf">
				<input type="submit" class="clik" value="搜索">
			</div>
			</form>
			
		</div>
	
	</div>
	<div class="menu">
		<div class="nav">
			<div class="navs">
				<div class="left_nav">
					全部商品分类
					<div class="nav_mini">
						<ul>
							<li>
								<a href="goods/qury_kind?kind=001" style="font-size:20px;">手机数码<br>&nbsp;</a>
								<div class="two_nav">
									<a href="goods/qury_brand?brand=苹果" style="font-size:15px;">苹果&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=三星" style="font-size:15px;">三星&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=华为" style="font-size:15px;">华为&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=小米" style="font-size:15px;">小米</a><br>
									<a href="goods/qury_brand?brand=魅族" style="font-size:15px;">魅族&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=oppp" style="font-size:15px;">oppo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=vivo" style="font-size:15px;">vivo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=一加" style="font-size:15px;">一加</a>
									
								</div>
							</li>
							<li><a href="goods/qury_kind?kind=002" style="font-size:20px">生活杂货<br>&nbsp;</a>
							<div class="two_nav">
									<a href="goods/qury_brand?brand=衣架" style="font-size:15px;">衣架&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=清洁" style="font-size:15px;">清洁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=收纳" style="font-size:15px;">收纳</a>
								</div>
							</li>
							<li><a href="goods/qury_kind?kind=003" style="font-size:20px">电脑办公<br>&nbsp;</a>
							<div class="two_nav">
									<a href="goods/qury_brand?brand=台式机" style="font-size:15px;">台式机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=笔记本" style="font-size:15px;">笔记本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=组装电脑" style="font-size:15px;">组装电脑&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=耳机" style="font-size:15px;">耳机</a><br>
									<a href="goods/qury_brand?brand=音响" style="font-size:15px;">音响&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=鼠标" style="font-size:15px;">鼠标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=键盘" style="font-size:15px;">键盘&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=摄像头" style="font-size:15px;">摄像头</a>
									
								</div></li>
							<li><a href="goods/qury_kind?kind=004" style="font-size:20px">男装女装<br>&nbsp;</a>
								<div class="two_nav">
									<a href="goods/qury_brand?brand=上衣" style="font-size:15px;">上衣&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=外套" style="font-size:15px;">外套&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=裤子" style="font-size:15px;">裤子&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=帽子" style="font-size:15px;">帽子</a><br>
									<a href="goods/qury_brand?brand=鞋" style="font-size:15px;">鞋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=裙子" style="font-size:15px;">裙子&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=T恤" style="font-size:15px;">T恤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=苹果羽绒服" style="font-size:15px;">羽绒服</a>
									
								</div></li>
							<li><a href="goods/qury_kind?kind=005" style="font-size:20px">食品<br>&nbsp;</a>
								<div class="two_nav">
									<a href="goods/qury_brand?brand=小吃" style="font-size:15px;">小吃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=饮料" style="font-size:15px;">饮料&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="goods/qury_brand?brand=进口食品" style="font-size:15px;">进口食品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
								</div></li>
							<li><a href="goods/qury_kind?kind=006" style="font-size:20px">美妆<br>&nbsp;</a></li>
							<li><a href="goods/qury_kind?kind=007" style="font-size:20px">图书<br>&nbsp;</a></li>
							
						</ul>
					</div>
				</div>
				<ul>
					<li><a href="">上海市</a></li>
					<li><a href="">浦东新区</a></li>
					<li><a href="">上海电力学院</a></li>
					
				</ul>
			</div>
		</div>
	</div>
	<div class="banner">
		<div class="ban">
			<img src="./images/banner.jpg" width="980" height="325" alt="">
		</div>
	</div>
	
	<div class="footer">
		
		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>
</body>
</html>