<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	   <base href="<%=basePath%>">
		<title>在线考试练习系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css2/bootstrap.min.css" />
		<link rel="stylesheet" href="css2/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css2/fullcalendar.css" />	
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
			<a href="#" class="visible-phone"><i class="icon icon-home"></i> 首页</a>
			<ul>
				<li class="active"><a href="Manager.jsp"><i class="icon icon-home"></i> <span>首页</span></a></li>
				<li class="submenu">
					<a href="#"><i class="icon icon-th-list"></i> <span>数据信息</span> <span class="label">3</span></a>
					<ul>
						<li><a href="manager/qurey_user">用户信息</a></li>
						<li><a href="manager/query_transaction">交易信息</a></li>
						<li><a href="manager/query_good">商品信息</a></li>
					
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
				<h1>欢迎 ${user.uname} 管理员</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
				<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">商品分布</a>
			</div>
			 <div id="main" style="height:400px"></div>
    <!-- ECharts单文件引入 -->
    <script src="js2/echarts-all.js"></script>
<script src="js2/jquery-1.11.1.min.js"></script>
<script src="js2/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts图表
        var myChart = echarts.init(document.getElementById('main'));   
        var myoption = {
            tooltip: {
                show: true
            },
            legend: {
                data:['分类']
            },
            xAxis : [
                {
                    type : 'category',
                    data : ["手机数码","电脑办公","生活杂货","男装女装","图书","食品","美妆"]
                }
            ],
            yAxis : [
                {
                    type : 'value'
                }
            ],
            series : [
                {
                    "name":"人数",
                    "type":"bar",
                    "data":[1,2,3,4,5,6,6]
                }
            ]
        };
        myChart.setOption(myoption); 
        function getData() {
			$.ajax({
				type : "POST",
				url : 'login/chart.json', 
				async : false,
				success : function(result) {
					option = {
						series : [
                {
                    "name":"人数",
                    "type":"bar",
                    "data":result
                }
            ]
					};
	
					myChart.setOption(option); 
	
				},
				error : function() {
					alert("该时间暂无数据");
				}
			});
		}
$(document).ready(function(){ 
getData(); 
}); 
        // 为echarts对象加载数据 
       // myChart.setOption(option); 
    </script>
		

            <script src="js2/excanvas.min.js"></script>
            <script src="js2/jquery.min.js"></script>
            <script src="js2/jquery.ui.custom.js"></script>
            <script src="js2/bootstrap.min.js"></script>
            <script src="js2/jquery.flot.min.js"></script>
            <script src="js2/jquery.flot.resize.min.js"></script>
            <script src="js2/jquery.peity.min.js"></script>
            <script src="js2/fullcalendar.min.js"></script>
            <script src="js2/unicorn.js"></script>
            <script src="js2/unicorn.首页.js"></script>
	</body>
</html>
