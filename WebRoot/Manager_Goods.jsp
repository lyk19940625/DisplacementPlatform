<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>>">
		<title>Unicorn Admin</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css2/bootstrap.min.css" />
		<link rel="stylesheet" href="css2/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css2/colorpicker.css" />
        <link rel="stylesheet" href="css2/datepicker.css" />
		<link rel="stylesheet" href="css2/uniform.css" />
		<link rel="stylesheet" href="css2/select2.css" />		
		<link rel="stylesheet" href="css2/unicorn.main.css" />
		<link rel="stylesheet" href="css2/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		
		
		<div id="header">
			<h1><a href="./dashboard.html">Unicorn Admin</a></h1>		
		</div>
		
		<div id="search">
			<input type="text" placeholder="Search here..." /><button type="submit" class="tip-right" title="Search"><i class="icon-search icon-white"></i></button>
		</div>
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text">个人中心</span></a></li>
                <li class="btn btn-inverse dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="#">new message</a></li>
                        <li><a class="sInbox" title="" href="#">inbox</a></li>
                        <li><a class="sOutbox" title="" href="#">outbox</a></li>
                        <li><a class="sTrash" title="" href="#">trash</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
                <li class="btn btn-inverse"><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="#" class="visible-phone"><i class="icon icon-th-list"></i> 商品</a>
			<ul>
				<li><a href="Manager.jsp"><i class="icon icon-home"></i> <span>首页</span></a></li>
				<li class="submenu active open">
					<a href="#"><i class="icon icon-th-list"></i> <span>数据信息</span> <span class="label">3</span></a>
					<ul>
							<li><a href="manager/qurey_user">用户信息</a></li>
						<li><a href="manager/query_transaction">交易信息</a></li>
						<li  class="active"><a href="manager/query_good">商品信息</a></li>
					</ul>
				</li>
				<li><a href="Manager_Search.jsp"><i class="icon icon-tint"></i> <span>查询及修改</span></a></li>
			
		
		</div>
		
		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
		<div id="content">
			<div id="content-header">
				<h1>商品</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> </a>
				<a href="#" class="tip-bottom">数据信息</a>
				<a href="#" class="current">商品</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>商品</h5>
							</div>
							<div class="widget-content nopadding">
							 <form action="manager_student" method="post"> 
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>商品编号</th>
											<th>商品名</th>
											<th>种类</th>
											<th>数量</th>
											<th>介绍</th>
											<th>图片</th>
											<th>价格</th>
											<th>状态</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									  <c:forEach var="g" items="${goodslist}">
					            <tr>
					             <td><c:out value="${g.gid}"/></td>
					               <td><c:out value="${g.gname}"/></td>
					                 <td><c:out value="${g.kind}"/></td>
					                   <td><c:out value="${g.count}"/></td>
					                     <td><c:out value="${g.introduce}"/></td>
					                      <td><c:out value="${g.picture}"/></td>
					                        <td><c:out value="${g.price}"/></td>
					                        <td><c:out value="${g.state}"/></td>
					                           <td><a href="">删除</a></td>
                             
					            </tr>
					                 </c:forEach>
										
									</tbody>
									
								</table>	
								   </form>						
							</div>
						</div>
					
			
			</div>
		</div>
		
            
            <script src="js2/jquery.min.js"></script>
            <script src="js2/jquery.ui.custom.js"></script>
            <script src="js2/bootstrap.min.js"></script>
            <script src="js2/bootstrap-colorpicker.js"></script>
            <script src="js2/bootstrap-datepicker.js"></script>
            <script src="js2/jquery.uniform.js"></script>
            <script src="js2/select2.min.js"></script>
            <script src="js2/unicorn.js"></script>
            <script src="js2/unicorn.form_common.js"></script>
	</body>
</html>
