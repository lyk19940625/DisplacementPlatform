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
	<title>细节</title>
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
	function edit4(){
		alert("评论成功！");
        b.setAttribute("href","transaction/evaluate?gid="+gid.value+"&evaluate="+evaluate.value); 
        
    }
    function myfunction(){
       var evaluate = document.getElementById("evaluate");
    document.getElementById("evaluate").value=  document.getElementById("input").value;
   if(document.getElementById("evaluate").value != ''){
      evaluate.setAttribute("readOnly",'true');
    
    }
    }
	</script>
</head>
<body onload="myfunction()">
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
	 <c:forEach var="goods" items="${goodslist}">

	<div class="Dbox">
		<div class="box">
		
			<div class="left">
				<div class="timg"><img src="upload/${goods.picture}" alt=""></div>
			</div>
			<div class="cent">
				<div class="title">${goods.gname}(${goods.state})</div>
				<div class="bg">
					<p>价格：<strong>${goods.price}</strong></p>
				
				</div>
				<div class="clear">
					<p>品牌：<strong>${goods.brand}</strong></p>									</div>
				<div class="clear">
				<div class="clear">
					<p>介绍：<strong>${goods.introduce}</strong></p>									</div>
				<div class="clear">
					
				</div>
				<div class="clear" style="margin-top:20px;">
					<div class="min_t" style="line-height:36px">数量：</div>
					<div class="num_box">
						<input type="text" name="num" value="${goods.count}" style="width:40px;height:32px;text-align:center;float:left" readonly>
						
					</div>
				</div>
				<div class="Dbox1">
		<div class="bg">
			<div class="top1">
				<span>评论</span>
			</div>
		<div class="btm">
			  <c:forEach var="t" items="${transactionlist}">
		<input type="hidden" id="input" value="${t.evaluate}"/>
		<textarea class="comments" rows="3" cols="30" id="evaluate"> ${t.evaluate}</textarea>
	</c:forEach>
			</div>
		</div>
	</div>
				<div class="clear" style="margin-top:20px;">
					   <input type="hidden" name="Gid" value="${goods.gid}" id="gid"/>
					<a href="" id="b" onclick="edit4()">　<img src="images/tj.jpg" alt=""></a>
				</div>
				
			</div>
		</div>
		<div class="Dbox400">
		<div class="bottom">
				<div class="top">
				<span>订单详情</span>	
			</div>
			<div class="btm">
				
								<table class="table table-bordered table-striped">
									
									<thead>
										
									</thead>
									<tbody>
									<tr>
									<td>货物名称:</td>
									<td></td>
									<td>${goods.brand}&nbsp;${goods.gname}</td>
									</tr>
									 <tr>
					            <td>&nbsp;</td>
					            </tr>
										  <c:forEach var="t1" items="${transactionlist}">
					            <tr>					
					           <td>数量:</td>
					             <td></td>
					              <td>${t1.count}</td>
					            </tr>
					            <tr>
					            <td>&nbsp;</td>
					            </tr>
					             <tr>					
					           <td>总价:</td>
					             <td></td>
					              <td>${t1.price}</td>
					            </tr>
					            <tr>
					            <td>&nbsp;</td>
					            </tr>
					             <tr>
					            <td>卖家:</td>
					             <td></td>
					              <td>${t1.outuid}</td>
					            </tr>
					     <tr>
					            <td>&nbsp;</td>
					            </tr>
					             <tr>
					            <td>交易时间:</td>
					             <td></td>
					              <td>${t1.time}</td>
					            </tr>
					                <tr>
					            <td>&nbsp;</td>
					            </tr>
					            <tr>
					            <td>快递单号:</td>
					             <td></td>
					              <td>${t1.deliver}</td>
					            </tr>
					            </c:forEach>
									</tbody>		
								</table>	
			</div>
		</div>
	</div>
	</div>
	<div class="Dbox1">
		<div class="bottom">
			<div class="top">
				<span>卖家信息</span>
			</div>
		<div class="btm">
		 <c:forEach var="u" items="${userlist}">
				${u.uname}&nbsp;&nbsp; ${u.sex}&nbsp;&nbsp;${u.tel}&nbsp;&nbsp; ${u.school}&nbsp;&nbsp; ${u.address}
			</c:forEach>
			</div>
		</div>
	</div>
	<div class="f1box">
		<div class="title">
			<div class="lf">商品细节图</div>
			
		</div>
	<div class="rg">
			
			<img src="upload/${goods.picture1}">
			<img src="upload/${goods.picture2}">
			<img src="upload/${goods.picture3}">
			<img src="upload/${goods.picture4}">
			<img src="upload/${goods.picture5}">
		
			
			</div>
	<div class="footer">
	
		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>
		</c:forEach>

</body>

</html>

