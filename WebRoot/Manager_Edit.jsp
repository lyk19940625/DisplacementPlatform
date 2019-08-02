<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
	<script>
	function checkform1(){
		alert("删除成功！");
		}
	function checkform2(){
	alert("编辑成功！");
	}
</script>
    
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
		<link rel="stylesheet" href="css2/myinput.css" />
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
			<a href="#" class="visible-phone"><i class="icon icon-home"></i> 首页</a>
			<ul>
				<li class="active"><a href="Manager.jsp"><i class="icon icon-home"></i> <span>首页</span></a></li>
				<li class="submenu">
					<a href="#"><i class="icon icon-th-list"></i> <span>人员信息</span> <span class="label">3</span></a>
					<ul>
						<li><a href="manager/query_student">学生</a></li>
						<li><a href="manager/query_teacher">老师</a></li>
						<li><a href="manager/query_manager">管理员</a></li>
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
				<h1>学生</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> </a>
				<a href="#" class="tip-bottom">人员信息</a>
				<a href="#" class="current">用户</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>用户</h5>
							</div>
							<div class="widget-content nopadding">
							 <form action="manager/edit_user" method="post"> 
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										 	<th>姓名</th>
											<th>账号</th>
											<th>密码</th>
											<th>性别</th>
											<th>电话</th>
											<th>住址</th>
											<th>学校</th>
											<th>删除</th>
											<th>编辑</th>
										</tr>
									</thead>
									<tbody>
									  <c:forEach var="user" items="${user}">
					            <tr>
					            <td><input type="text" name="uname" value="${user.uname}" readonly/></td>
					             <td><input type="text" name="uid" value="${user.uid}"/></td>
					               <td><input type="text" name="pwd" value="${user.pwd}"/></td>
					                 <td><input type="text" name="sex" value="${user.sex}"/></td>
					                   <td><input type="text" name="tel" value="${user.tel}"/></td>
					                     <td><input type="text" name="address" value="${user.address}"/></td>
					                      <td><input type="text" name="school" value="${user.school}"/></td>
					                        <td><a href="" onclick="checkform1()">删除</a></td>
					                         <td><input type="submit" value="编辑" onclick="checkform2()"></td>
                             
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
