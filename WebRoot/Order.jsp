<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>购物车</title>
	<link rel="stylesheet" type="text/css" href="./css/css.css">
	<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
	<link rel="stylesheet" href="css/style.css">
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
		$('.Caddress .add_mi').click(function(){
			$(this).css('background','url("images/mail_1.jpg") no-repeat').siblings('.add_mi').css('background','url("images/mail.jpg") no-repeat')
		})
	})
	var x=Array();
	function func(a,b){
		x[b]=a.html();
		alert(x)
		a.css('border','2px solid #f00').siblings('.min_mx').css('border','2px solid #ccc');
	}
	function edit3(){
	   	alert("结算成功！");
        d.setAttribute("href","transaction/order?gid="+gid.value+"&count="+num.value); 
        
    }
	
	</script>
</head>
<style type="text/css">
	td{vertical-align: middle !important;}
	.form-group{padding: 5px 0;}
</style>
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
			<div class="se">
				<input type="text" name="search" class="lf">
				<input type="submit" class="clik" value="搜索">
			</div>
			
		</div>
		
	</div>
	<div class="Caddress">
		<div class="Ccart" data-toggle="modal" data-target="#mymodal-data">使用新地址</div>
		<div class="add_mi">
			<p style="border-bottom:1px dashed #ccc;line-height:28px;">${user.uname}</p>
			<p>${user.address}&nbsp;&nbsp; ${user.tel}</p>
		</div>
		
			     <c:forEach var="goods" items="${goodslist}">
	</div>
	<div class="Cbox">
		<table class="table table-striped table-bordered table-hover">
		   <thead>
		     <tr>
		       <th>商品图片</th>
		       <th>商品名称</th>
		       <th>商品属性</th>
		       <th>商品价格</th>
		       <th>商品数量</th>
		       <th>操作</th>
		     </tr>
		   </thead>
		   <tbody>
		     <tr>
	
		       <td><img src="upload/${goods.picture}" alt=""></td>
		       <td>${goods.gname}</td>
		       <td>
		       		品牌：<span style='color:#ccc'>${goods.brand}</span><br>
		       		特征：<span style='color:#ccc'>${goods.introduce}</span>
		       </td>
		       <td>${goods.price}</td>
		       <td><input type="text" id="num" value="${goods.count}" style="width:50px;text-align:center" readonly></td>
		       <td>删除</td>
		
		     </tr>
		    
		   </tbody>
	 	</table>
	</div>
	<div class="Cprice">
	<input type="hidden"  value="${goods.gid}" id="gid"/>
		<div class="price">总价：${goods.price}</div>
		<div class="jiesuan"><a href="" id="d" onclick="edit3()">结算</a></div>
	</div>
	       </c:forEach>
	

<!-- 模态弹出窗内容 -->
<div class="modal" id="mymodal-data" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">新添收货地址</h4>
			</div>
			<div class="modal-body" style="overflow:hidden">
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的所在地区">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的详细地址">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的邮政编码">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的收货人姓名">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的手机号码">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的电话号码">
				    </div>
				    <br>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">保存</button>
			</div>
			
		</div>
	</div>
</div>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<div class="footer">

		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>
</body>

</html>
