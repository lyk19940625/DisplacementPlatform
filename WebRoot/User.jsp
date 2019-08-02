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
    
   <title>个人中心</title>
	<link rel="stylesheet" type="text/css" href="./css/css.css">
	<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
	<script type="text/javascript">
	
function getFileName(o){
    var pos=o.lastIndexOf("\\");
    return o.substring(pos+1);  
}
	$(function(){
		$('.nav_mini ul li').hover(function(){
			$(this).find('.two_nav').show(100);
		},function(){
			$(this).find('.two_nav').hide(100);
		})
	})
	
	function checkgoods(){
	alert("发布成功！");
	}
	
	
                //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
          var div = document.getElementById('preview');
          var files = $("#file").val();
    var fileName = getFileName(files);
    document.getElementById('picture').value = fileName;
  
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
         
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                 
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
             
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
        function Click1(){  
    document.getElementById('file1').click();            //调用main_img的onclick事件  
    
}  
 function previewImage1(file1)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
         
          var files1 = $("#file1").val();
    var fileName1 = getFileName(files1);
    document.getElementById('picture1').value = fileName1;
  
          if (file1.files && file1.files[0])
          {
           
              var img = document.getElementById('img1');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file1.files[0]);
          }
         
        }
          function Click2(){  
    document.getElementById('file2').click();            //调用main_img的onclick事件  
    
}  
 function previewImage2(file2)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
         
          var files2 = $("#file2").val();
    var fileName2 = getFileName(files2);
    document.getElementById('picture2').value = fileName2;
  
          if (file2.files && file2.files[0])
          {
           
              var img = document.getElementById('img2');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file2.files[0]);
          }
         
        }
       
          function Click3(){  
    document.getElementById('file3').click();            //调用main_img的onclick事件  
    
}  
 function previewImage3(file3)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
         
          var files3 = $("#file3").val();
    var fileName3 = getFileName(files3);
    document.getElementById('picture3').value = fileName3;
  
          if (file3.files && file3.files[0])
          {
           
              var img = document.getElementById('img3');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file3.files[0]);
          }
         
        }
          function Click4(){  
    document.getElementById('file4').click();            //调用main_img的onclick事件  
    
}  
 function previewImage4(file4)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
         
          var files4 = $("#file4").val();
    var fileName4 = getFileName(files4);
    document.getElementById('picture4').value = fileName4;
  
          if (file4.files && file4.files[0])
          {
           
              var img = document.getElementById('img4');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file4.files[0]);
          }
         
        }
          function Click5(){  
    document.getElementById('file5').click();            //调用main_img的onclick事件  
    
}  
 function previewImage5(file5)
        {
          var MAXWIDTH  = 220; 
          var MAXHEIGHT = 220;
         
          var files5 = $("#file5").val();
    var fileName5 = getFileName(files5);
    document.getElementById('picture5').value = fileName5;
  
          if (file5.files && file5.files[0])
          {
           
              var img = document.getElementById('img5');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file5.files[0]);
          }
         
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
			<div class="se">
				<input type="text" name="search" class="lf">
				<input type="submit" class="clik" value="搜索">
			</div>
		</div>
		<div class="card">
			<a href="index.jsp">购物车<div class="num">0</div></a>
		</div>
	</div>
	<div class="menu">
		<div class="nav">
			<div class="navs">
				<div class="left_nav">
					我的信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改
					<div class="nav_mini">
						<ul>
							<li>账号：${user.uid}</li><br>
							<li>用户名：${user.uname}</li><br>
							<li>性别：${user.sex}</li><br>
							<li>手机：<br>${user.tel}</li><br>
							<br><li>学校：<br>${user.school}</li><br>
							<br><li>地址：<br>${user.address}</li>
							
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
		
		<div class="Dbox100">
		<div class="bottom" style="height: 420px; ">
			<div class="top">
				<span>我的消息</span>
				
			</div>
			<div class="btm">
				
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编号</th>
											<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
											<th>内容</th>
											
										</tr>
									</thead>
									<tbody>
									  <%int s=0; %>
									  <c:forEach var="message" items="${messagelist}">
									   <%s++; %>
					            <tr>
					             <td><%=s %></td>
					             <td></td>
					             <td><a href="goods/qury_detail?gid=${message.gid}"><c:out value="${message.content}"/></a></td>
					            </tr>
					            <tr>
					            <td>&nbsp;</td>
					            <td>&nbsp;</td>
					            <td>&nbsp;</td>
					            </tr>
					                 </c:forEach>
										
									</tbody>
									
								</table>	
								
			</div>
		</div>
	</div>
	<div class="Dbox300">
		<div class="bottom">
			<div class="top">
				
			</div>
			
		</div>
	</div>
	<div class="Dbox200">
	<form name="userForm1" action="goods/upload" enctype="multipart/form-data" method="post">  
		<div class="bottom" style="height: 420px; ">
			<div class="top">
				<span>发布商品</span>
				
			</div>
			<div class="btm">
				<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										    <th>商品名称</th>
											<th>商品类型</th>
											<th></th>
											<th>数量</th>
											<th>单价</th>
											
											<th>品牌</th>
										</tr>
									</thead>
									<tbody>
					            <tr>
					               <td><input type="text" size=22 name="Gname"></td>
					               <td><select name="Kind" >
												        <option value="001"/>手机数码
													    <option value="002"/>生活杂货
														<option value="003"/>电脑办公
														<option value="004"/>男装女装
														<option value="005"/>食品
														<option value="007"/>图书
														<option value="006"/>美妆
											</select></td>
					               <td><input type="hidden" name="State" value="售卖"/></td>
					               <td><input type="text" size=5 name="Count"></td>
					               <td><input type="text" size=5 name="Price"></td>	
					               		            
					               <td><input type="text" size=12 name="Brand"></td>    
					            </tr>
					              
										
									</tbody>
									
								</table>	
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										    <th>简介</th>
											  <th></th>
											<th><input type="file" name="file" id="file" onchange="previewImage(this)" /> </th>
											
										</tr>
									</thead>
									<tbody>
					            <tr>
					                <td valign="top"><textarea class="comments" rows="15" cols="17" name="Introduce"> </textarea> </td> 
					                <td><textarea class="comments" rows="15" cols="5" style="border:none;"> </textarea> </td>
					                <td><div id="preview">
                                        <img id="imghead" width=220 height=220 border=0 src='<%=request.getContextPath()%>/images/leo.jpg' >
                                        </div><input type="hidden" name="Picture" id="picture"/>
                                        </div><input type="hidden" name="Picture1" id="picture1"/>
                                        </div><input type="hidden" name="Picture2" id="picture2"/>
                                        </div><input type="hidden" name="Picture3" id="picture3"/>
                                        </div><input type="hidden" name="Picture4" id="picture4"/>
                                        </div><input type="hidden" name="Picture5" id="picture5"/></td>
					            </tr>
					              
										
									</tbody>
									
								</table>	
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										    <th width="10%" style="text-align:center;">  <button type="submit" class="btn-register" onclick="checkgoods()" style="font-size:18px" >立即发布</button></th>
											
										</tr>
									</thead>
									<tbody>
					            <tr>
					              
					            </tr>
					              
										
									</tbody>
									
								</table>	
			</div>
		</div>
		</form>
	</div>
		</div>
			<div class="f1box">
		<div class="title">
			<div class="lf">添加发布商品细节图</div>
			
		</div>
		
			<div class="rg">
			<span style="display:none"><input type="file" name="file" id="file1" onchange="previewImage1(this)" /></span>
			<img src="images/aaa.jpg" id="img1" onclick="Click1()">
			<span style="display:none"><input type="file" name="file" id="file2" onchange="previewImage2(this)"/></span>
			<img src="images/aaa.jpg" id="img2" onclick="Click2()">
			<span style="display:none"><input type="file" name="file" id="file3" onchange="previewImage3(this)"/></span>
			<img src="images/aaa.jpg" id="img3" onclick="Click3()">
			<span style="display:none"><input type="file" name="file" id="file4" onchange="previewImage4(this)"/></span>
			<img src="images/aaa.jpg" id="img4" onclick="Click4()">
			<span style="display:none"><input type="file" name="file" id="file5" onchange="previewImage5(this)"/></span>
		<img src="images/aaa.jpg" id="img5" onclick="Click5()">
		<img src="images/aab.jpg">
		
			
			</div>
		
	</div>
	<div class="f1box">
		<div class="title">
			<div class="lf">我发布的商品<div class="abs">1F</div></div>
			
		</div>
		
			<div class="rg">
			 <c:forEach var="out" items="${outlist}">
				<a href="goods/qury_ogood?gid=${out.gid}"><img src="upload/${out.picture}" alt=""></a>
				
			</c:forEach>
			</div>
		
	</div>
	<div class="f1box">
		<div class="title">
			<div class="lf">我购买的商品<div class="abs">2F</div></div>
			
		</div>
		<div class="box">
			</div>
			<div class="rg">
				<c:forEach var="in" items="${inlist}">
				<a href="goods/qury_igood?gid=${in.gid}"><img src="upload/${in.picture}" alt=""></a>
				
			</c:forEach>
			</div>
		</div>

	<div class="footer">
		
		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>
</body>
</html>