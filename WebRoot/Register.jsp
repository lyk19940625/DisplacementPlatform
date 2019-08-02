<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
 <head>
     <base href="<%=basePath%>">
    <title>注册</title>
            <link type="text/css" rel="stylesheet"  href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css"/>
        <script type="text/javascript">window.pageConfig = { compatible: true }; </script>
            <script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/1.0.0/base.js"></script>
                <script type="text/javascript" src="//misc.360buyimg.com/user/reg/1.0.0/js/??jquery.1.7.js"></script>
       
            <link type="text/css" rel="stylesheet"  href="//misc.360buyimg.com/user/reg/1.0.0/widget/??header-1130/header-1130.css,common/common.css,personal-reg-1130/personal-reg-1130.css,foreign-number-layer-1130/foreign-number-layer-1130.css,footer/footer.css" source="widget"/>
             <script language="javascript">
function checkform(){
	alert("注册成功！");
	}
</script>
        </head>
<body>
    
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        
        <div class="logo-title">开始注册</div>
        <div class="have-account">已有账号？ <a href="Login.jsp">请登录</a></div>
    </div>

</div>
<div class="container w">

    <div class="main clearfix" id="form-main">
        <div class="reg-form fl">
            <form action="register/save" name="register" method="post">
              
            <div class="form-item form-item-account" id="form-item-account">
                    <label>用　户　名</label>
                    <input type="text" id="form-account" name="Uid" class="field" autocomplete="off" maxlength="20"
                           placeholder="您的账户名和登录名" default='<i class="i-def"></i>支持中文、字母、数字、“-”“_”的组合，4-20个字符' />
                    <i class="i-status"></i>
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                    <label>设 置 密 码</label>
             
                    <input type="password" name="Pwd"  class="field" maxlength="20"
                           placeholder="建议至少使用两种字符组合" default="<i class=i-def></i>建议使用字母、数字和符号两种及以上的组合，6-20个字符" />
                    <i class="i-status"></i>
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                <div class="form-item">
                       <label>昵  称</label>
                        <input type="text" name="Uname"  class="field form-authcode"
                               placeholder="请输入地址" autocomplete="off"/>
                </div>
                <div class="input-tip">
                    <span></span>
                </div>
                                    <div class="item-email-wrap">
                        <div class="form-item">
                           <label>性  别</label>
                        <input type="text" name="Sex"  class="field form-authcode"
                               placeholder="请输入性别" autocomplete="off"/>
                        </div>
                        <div class="input-tip">
                            <span></span>
                        </div>
                           
                    </div>
                                <div class="item-phone-wrap">
                                            <div class="form-item form-item-phone">
                            <label>手  机</label>
                        <input type="text" name="Tel"  class="field form-authcode"
                               placeholder="请输入手机号码" autocomplete="off"/>
                        </div>
                                        <div class="input-tip">
                        <span></span>
                    </div>
                                         
                                    </div>
                                    <div class="form-item form-item-authcode">
                        <label>学  校</label>
                        <input type="text" name="School"  class="field form-authcode"
                               placeholder="请输入学校名称" autocomplete="off"/>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                                                    <div class="form-item form-item-phonecode">
                        <label>地  址</label>
                        <input type="text" name="Address"  class="field form-authcode"
                               placeholder="请输入地址" autocomplete="off"/>
                      
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                                <div class="form-agreen">
                                            
                                        <div class="input-tip">
                        <span></span>
                    </div>
                </div>
                                <div>
                    <button type="submit" class="btn-register" onclick="checkform()">立即注册</button>
                </div>
                
            </form>
        </div>
    </div>
   
<div id="form-footer" class="footer w">
  
    <div class="copyright">
       
    </div>
</div>


<script type="text/javascript">
    var localmisc = $("#localmisc");
    if(1==localmisc.val()){
        seajs.use('../misc2016/js/localRegister', function (reg) {
            reg.init();
        })
    }else{
        seajs.use('//misc.360buyimg.com/user/reg/1.0.0/js/register.1130', function (reg) {
            reg.init();
        })
    }
</script>
<script type="text/javascript" src="//seq.jd.com/jseqf.html?bizId=JD_register_pc&platform=js&version=1"></script>
        <script src="//payrisk.jd.com/js/td.js"></script>
    <script type="text/javascript">
        $(function () {
            getJdEid(function (eid, fpid) {
                $("#eid").val(eid);
                $("#sessionId").val(fpid);
            });
        });
    </script>
    <a target="_blank" href="//surveys.jd.com/index.php?r=survey/index/sid/447941/lang/zh-Hans" class="feedback"
   style="margin-top: -85px; position: fixed; right: 0px; bottom: 50%;"></a>
    </body>
</html>

