<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的商品细节</title>
	<link rel="stylesheet" type="text/css" href="./css/css.css">
	<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
	<script type="text/javascript">
	$(function(){
		$('.nav_mini ul li').hover(function(){
			$(this).find('.two_nav').show(100);
		},function(){
			$(this).find('.two_nav').hide(100);
		})
		$('.left_nav').hover(function(){
			$(this).find('.nav_mini').show(100);
		},function(){
			$(this).find('.nav_mini').hide(100);
		})
		$('#jia').click(function (){
			$('input[name=num]').val(parseInt($('input[name=num]').val())+1);
		})
		$('#jian').click(function (){
			$('input[name=num]').val(parseInt($('input[name=num]').val())-1);
		})
	})
	var x=Array();
	function func(a,b){
		x[b]=a.html();
		alert(x)
		a.css('border','2px solid #f00').siblings('.min_mx').css('border','2px solid #ccc');
	}
	
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
					<div class="nav_mini" style="display:none">
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
							<li><a href="" style="font-size:20px">生活杂货<br>&nbsp;</a>
							<div class="two_nav">
									<a href="" style="font-size:15px;">衣架&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">清洁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">收纳</a>
								</div>
							</li>
							<li><a href="" style="font-size:20px">电脑办公<br>&nbsp;</a>
							<div class="two_nav">
									<a href="" style="font-size:15px;">台式机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">笔记本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">组装电脑&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">耳机</a><br>
									<a href="" style="font-size:15px;">音响&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">鼠标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">键盘&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">摄像头</a>
									
								</div></li>
							<li><a href="" style="font-size:20px">男装女装<br>&nbsp;</a>
								<div class="two_nav">
									<a href="" style="font-size:15px;">上衣&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">外套&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">裤子&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">帽子</a><br>
									<a href="" style="font-size:15px;">鞋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">裙子&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">T恤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">羽绒服</a>
									
								</div></li>
							<li><a href="" style="font-size:20px">食品<br>&nbsp;</a>
								<div class="two_nav">
									<a href="" style="font-size:15px;">小吃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">饮料&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<a href="" style="font-size:15px;">进口食品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
								</div></li>
							<li><a href="" style="font-size:20px">美妆<br>&nbsp;</a></li>
							<li><a href="" style="font-size:20px">图书<br>&nbsp;</a></li>
							
						</ul>
					
			
			</div>
		</div>
	</div>
	
	<div class="Dbox">
		<div class="box">
			<div class="left">
				<div class="timg"><img src="images/img_50.jpg" alt=""></div>
				
			
			</div>
			<div class="cent">
				<div class="title">iphone 7（黑色）</div>
				<div class="bg">
					<p>市场价：<strong>￥5099.00</strong></p>
					<p>促销价：<strong>￥1099.00</strong></p>
				</div>
				<div class="clear">
					<div class="min_t">选择版本：</div>
									</div>
				<div class="clear">
					
				</div>
				<div class="clear" style="margin-top:20px;">
					<div class="min_t" style="line-height:36px">数量：</div>
					<div class="num_box">
						<input type="text" name="num" value="1" style="width:40px;height:32px;text-align:center;float:left">
						<div class="rg">
							<img src="images/jia.jpg" id='jia' alt="">
							<img src="images/jian.jpg" id='jian' alt="">
						</div>
					</div>
				</div>
				<div class="clear" style="margin-top:20px;">
					<img src="images/shop.jpg" alt="">
				
				</div>
			</div>
		</div>
	</div>
	<div class="Dbox1">
		<div class="bottom">
			<div class="top">
				<span>商品详情</span>
			</div>
			<div class="btm">
				我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我
			</div>
		</div>
	</div>
	<div class="footer">
		
		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>
</body>

</html>

