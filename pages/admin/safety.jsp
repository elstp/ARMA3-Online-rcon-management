<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
	String iscon = null;
	String user = null;
	if(request.getSession().getAttribute("islogin") != null){
		boolean BE = (boolean)request.getSession().getAttribute("islogin");
		user = (String)request.getSession().getAttribute("user");
		if(BE){
			iscon = "已连接";
		}else{
			iscon = "未连接";
		}
	}else{
		response.sendRedirect(basePath+"index.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ELSTP-ARMA3 RCON控制台</title>
    <meta name="description" content="ELSTP STUDUI RCON 控制台">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="<%=basePath %>resources/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath %>resources/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="<%=basePath %>resources/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>resources/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath %>resources/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="<%=basePath %>resources/assets/css/app.css">
    <script src="<%=basePath %>resources/assets/js/jquery.min.js"></script>

</head>

<body data-type="index">
    <script src="<%=basePath %>resources/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;"><img src="<%=basePath %>resources/assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
                </div>

                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span><%=user %></span> </a>
                        </li>

                        <!-- 新邮件 -->
                        <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-envelope"></i>
                                <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                            </a>
                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>resources/assets/img/qq2.jpg" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            ELSTP
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>七龙</span>
                                            </div>
                                            <div class="am-text-truncate"> 欢迎使用Rcon在线控制台! </div>
                                            <div class="menu-messages-content-time">2018-06-12 下午 16:40</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>resources/assets/img/qq1.jpg" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            ELSTP
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>以后的以后</span>
                                            </div>
                                            <div class="am-text-truncate"> 目前为测试版本!BUG多! </div>
                                            <div class="menu-messages-content-time">2018-06-12 下午 16:42</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>resources/assets/img/qq1.jpg" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            ELSTP
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>以后的以后</span>
                                            </div>
                                            <div class="am-text-truncate"> 发送指令没反应! </div>
                                            <div class="menu-messages-content-time">2018-06-12 下午 16:42</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="<%=basePath %>resources/assets/img/qq1.jpg" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            ELSTP
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                            <!-- am-icon-circle-o am-text-warning -->
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>以后的以后</span>
                                            </div>
                                            <div class="am-text-truncate"> 需要重新登录!!! </div>
                                            <div class="menu-messages-content-time">2018-06-12 下午 16:42</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a onclick="show('提示:','此功能未完善!');" href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <i class="am-icon-circle-o"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 新提示 -->
                        <li class="am-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-bell"></i>
                                <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
                            </a>

                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-line-chart"></i>
                                            <span> 在线控制台测试中...</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            ELSTP
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-star"></i>
                                            <span> QQ群:383121955</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            ELSTP
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-star"></i>
                                            <span> 七龙QQ:1179163813</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            ELSTP
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-star"></i>
                                            <span> KINGKIN QQ:1164581159</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            ELSTP
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-folder-o"></i>
                                            <span> 敬请期待!</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            ELSTP
                                        </div>
                                    </a>
                                </li>


                                <li class="tpl-dropdown-menu-notifications">
                                    <a onclick="show('提示:','此功能未完善!');" href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <i class="am-icon-bell"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a onclick="Exit();" href="javascript:;">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 菜单 -->
            <ul class="sidebar-nav">
              <li class="sidebar-nav-heading">ELSTP <span class="sidebar-nav-heading-info"> Stuido -ARMA3 RCON</span></li>
                <li class="sidebar-nav-link">
                    <a href="index.jsp">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="bans.jsp">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 封禁管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="safety.jsp"  class="active">
                        <i class="am-icon-calendar sidebar-nav-link-logo"></i> 安全管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="hhoad.jsp">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 脚本重载

                    </a>
                </li>

              <li class="sidebar-nav-heading">API<span class="sidebar-nav-heading-info"> 程序扩展</span></li>

                <li class="sidebar-nav-link">
                    <a href="api.jsp">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 接口管理
                    </a>
                     <a href="mservice.jsp">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 多服联禁
                    </a>
                </li>
            </ul>
        </div>


        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 安全管理 <small>ELSTP STUDIO</small></div>
                    </div>

                </div>

            </div>

                <div style="margin-left: 20%;" class="row am-cf">
                    <div class="am-u-sm-12 am-u-md-8">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">

					 <div class="am-form tpl-form-line-form">
 							<div class="am-form-group">
                                        <div class="am-u-sm-9">

                                            更改RCon密码: <input type="text" class="tpl-form-input" id="user-name-xg-password" placeholder="请输入新密码">
                  <br/>
                  <div class="am-form-group">
                        <button onclick="Xgpw(1);" type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    </div>         
                                        </div>
                                    </div>
										</div>
                            </div>
                        </div>
                    </div>

                   
                </div>


                    
                    
                <div style="margin-left: 20%;" class="row am-cf">

                    <div class="am-u-sm-12 am-u-md-8">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">

					 <div class="am-form tpl-form-line-form">
 							<div class="am-form-group">
                                        <div class="am-u-sm-9">
                                             最大延迟: <input type="text" class="tpl-form-input" id="user-name-xg-ping" placeholder="更改最大延迟值 如果玩家拥有更高的ping 他将被踢出服务器">
                    <br/>
                    <div class="am-form-group">
                        <button onclick="Xgpw(0);" type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    </div>

                                        </div>
                                   </div>
										</div>
                            </div>
                        </div>
                    </div>

                </div>

                
            </div>
            
        </div>
    </div>
    </div>
    <script src="<%=basePath %>resources/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath %>resources/assets/js/amazeui.datatables.min.js"></script>
    <script src="<%=basePath %>resources/assets/js/dataTables.responsive.min.js"></script>
    <script src="<%=basePath %>resources/assets/js/app.js"></script>
    <script src="<%=basePath %>resources/assets/js/elstp.js"></script>
	<script src="<%=basePath %>resources/assets/js/amazeui.min.js"></script>   
	<script src="<%=basePath %>resources/assets/js/amazeui.dialog.min.js"></script>  
<script>
	//
	function Xgpw(args){
		var _pw = "";
		if(args == 1){
			_pw = document.getElementById("user-name-xg-password").value;
		}else{
			_pw = document.getElementById("user-name-xg-ping").value;
		}
			$.ajax({
			url:'<%=basePath %>login/updatepw.arma?pw='+_pw,
			type:'post',
			dataType:'json',
			contentType:'application/json',
			success:function(arg){
				if(arg.code="ok"){
					show(arg.code,arg.message);
				}else{
					show(arg.code,arg.message);
				}
			}
		});
	}
	
		function Exit(){
				$.ajax({
				url:'<%=basePath %>login/disconnect.arma',
				type:'post',
				dataType:'json',
				contentType:'application/json',
				success:function(arg){
					if(arg.code="ok"){
						show(arg.code,arg.message);
					}else{
						show(arg.code,arg.message);
					}
				}
			});
			show("警告:请等待!","正在断开与Battleye的连接，请勿关闭!否则可能无法再次连接到Battleye!");
			setTimeout(function(){location.href="<%=basePath %>index.jsp"},30000);
		}
		function show(msg1,msg2){
			AMUI.dialog.alert({
							title: msg1,
							content: msg2,
							onConfirm: function() { console.log('那古道青坟烟 敢问今夕何年');
						}
			});
		}
	</script>
</body>

</html>