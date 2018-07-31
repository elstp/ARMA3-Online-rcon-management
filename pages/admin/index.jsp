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
	<style>
		
		
	</style>

	 	
	
</style>

</head>

<body data-type="index">
    <script src="<%=basePath %>resources/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
        	<div class="aw"></div>
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
                    <a href="index.jsp" class="active">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="bans.jsp">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 封禁管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="safety.jsp">
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
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> RCON控制台 <small>ELSTP STUDIO</small></div>
                    </div>

                </div>

            </div>

            <div class="row-content am-cf">
                <div class="row  am-cf">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-4">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">服务器控制</div>
                                <div class="widget-function am-fr">
                                    <a href="javascript:;" class="am-icon-cog"></a>
                                </div>
                            </div>
                            <div class="widget-body am-fr">
                                <div class="am-fl">
                                    <div class="widget-fluctuation-period-text">
                                 
                      <button onclick="Cmdtype(1);" class="widget-fluctuation-tpl-btn">
                        <i class="am-icon-calendar"></i>
                 		       关闭服务器
                      </button>

                         </div>
                        <button onclick="Cmdtype(3);" class="widget-fluctuation-tpl-btn">
                        <i class="am-icon-calendar"></i>
                 		       锁定服务器
                      </button>
                                </div>
                        <button onclick="Cmdtype(2);" style="margin-left: 100px;" class="widget-fluctuation-tpl-btn">
                        <i class="am-icon-calendar"></i>
                 		       重载本任务
                      </button>
                       <button onclick="Cmdtype(4);" style="margin-left: 100px; margin-top: 15px;" class="widget-fluctuation-tpl-btn">
                        <i class="am-icon-calendar"></i>
                 		       解锁服务器
                      </button>

                            </div>
                            
                        </div>

                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="widget widget-primary am-cf">
                            <div class="widget-statistic-header">
                                在线人数
                            </div>
                            <div class="widget-statistic-body">
                                <div class="widget-statistic-value" id="player">
                                    ☺ Loading...
                                </div>

                                <span class="widget-statistic-icon am-icon-credit-card-alt"></span>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="widget widget-purple am-cf">
                            <div class="widget-statistic-header">
                                BE状态
                            </div>
                            <div class="widget-statistic-body">
                                <div class="widget-statistic-value">
                                    ♥ <%=iscon %>
                                </div>
                                <div class="widget-statistic-description">
                                    <strong>成功连接到Battleye</strong>
                                </div>
                                <span class="widget-statistic-icon am-icon-support"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row am-cf">
                    <div class="am-u-sm-12 am-u-md-8">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">服务器控制台</div>
					 <div class="am-form tpl-form-line-form">
 							<div class="am-form-group">
                                        <div class="am-u-sm-9">
                                            <textarea readonly="readonly" class="user-intro" rows="10" id="user-intro" placeholder="Loading..." value="ss"></textarea>
                                            <input type="text" class="tpl-form-input" id="user-name-cmd" placeholder="请输入指令">
                                            <div style="float: left;">
	                                            <button onclick="SendCmd(1);" style="float: left;" class="widget-fluctuation-tpl-btn" id="log">日志消息</button>
	                                            <button onclick="SendCmd(2);" style="float: left;" class="widget-fluctuation-tpl-btn" id="cmd">命令消息</button>
	                                            <button onclick="SendCmd(3);" style="float: left;" class="widget-fluctuation-tpl-btn" id="error">错误消息</button>
	                                            <button onclick="SendCmd(4);" style="float: left;" class="widget-fluctuation-tpl-btn" id="system">系统消息</button>
	                                            <button onclick="SendMeg();" style="float: left;margin-left: 10px;" class="widget-fluctuation-tpl-btn" id="sendcmd"><i class="am-icon-calendar"></i>发送命令</button>
                                            </div>
                                        </div>
                                    </div>
								</div>
                            </div>
                        </div>
                    </div>
					
					<!--  
                    <div class="am-u-sm-12 am-u-md-4">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">专用服务器负载</div>

                            </div>
                            <div class="widget-body widget-body-md am-fr">

                                <div class="am-progress-title">CPU 负载 <span class="am-fr am-progress-title-more">100% / 100%</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar" style="width: 100%"></div>
                                </div>
                                <div class="am-progress-title">内存  负载  <span class="am-fr am-progress-title-more">28% / 100%</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar  am-progress-bar-warning" style="width: 75%"></div>
                                </div>
                                <div class="am-progress-title">网络 负载 <span class="am-fr am-progress-title-more">28% / 100%</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar am-progress-bar-danger" style="width: 35%"></div>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div> -->
                    
                </div>


                <div class="row am-cf">


                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-8 widget-margin-bottom-lg">

                        <div class="widget am-cf widget-body-lg">

                            <div class="widget-body  am-fr">
                                <div class="am-scrollable-horizontal ">
                                    <table width="100%" class="am-table am-table-compact am-text-nowrap tpl-table-black " id="example-r">
                                        <thead>
                                            <tr>
                                                <th>命令类型</th>
                                                <th>信息1</th>
                                                <th>信息2</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeX">
                                                <td>喊话:</td>
                                                <td>
                                                 <div class="am-form tpl-form-line-form">
                                              <input type="text"  value="-1" style="margin-top: -25PX;" class="tpl-form-input" id="user-name-say-cmd" placeholder="请输入指令">
                                   				 </div>
                                                </td>
                                                <td>
                                              <div class="am-form tpl-form-line-form">
                                              <input type="text" style="margin-top: -25PX;" class="tpl-form-input" id="user-name-say-msg" placeholder="请输入信息">
                                   				 </div>
                                                	
                                                </td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a onclick="Saymsg();" href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 发送
                                                        </a>
                                                        <a onclick="C_say()" href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 命令提示
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                       <tr class="gradeG">
                                                <td>选择已知名称的任务:</td>
                                                <td>
                                                 <div class="am-form tpl-form-line-form">
                                              <input type="text"  style="margin-top: -25PX;" class="tpl-form-input" id="user-name-cmd-miss" placeholder="任务名">
                                   				 </div>
                                                </td>
                                                
                                                <td>  
                                                	
                                                </td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a onclick="Sendtypecmd(1);"
                                                        	 href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 发送
                                                        </a>
                                                        <a onclick="M_mission()" href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 命令提示
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                          <tr class="gradeX">
                                                <td>踢出玩家:</td>
                                                <td>
                                                 <div class="am-form tpl-form-line-form">
                                              <input type="text"  style="margin-top: -25PX;" class="tpl-form-input" id="user-name-cmd-kick" placeholder="玩家编号">
                                   				 </div>
                                                </td>
                                                
                                                <td>  
                                                	
                                                </td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a onclick="Sendtypecmd(2);" href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 发送
                                                        </a>
                                                        <a onclick="K_kick()" href="javascript:;">
                                                            <i class="am-icon-pencil"></i>命令提示
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                         
                                            <tr class="gradeG">
                                     <td> <button onclick="Execcmdtable(1);" onl type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">重新开始并重新分配角色</button></td>
                                      <td> <button onclick="Execcmdtable(2);" type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">返回服务器上可用任务的列表</button></td>
                                      <td> <button onclick="Execcmdtable(3);" type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">显示服务器上的玩家列表</button></td>
                                            </tr>
                                            	
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                    
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
<script type="text/javascript">
	var infotype = 1;
	var sendmsg = "";
		$.fn.serializeObject = function()    
		{    
		   var o = {};    
		   var a = this.serializeArray();    
		   $.each(a, function() {    
		       if (o[this.name]) {    
		           if (!o[this.name].push) {    
		               o[this.name] = [o[this.name]];    
		           }    
		           o[this.name].push(this.value || '');    
		       } else {    
		           o[this.name] = this.value || '';    
		       }    
		   });    
		   return JSON.stringify(o);    
		};
		
		function SendCmd(arg){
				if(arg==1){
					infotype = 1;
				}else if(arg==2){
					infotype = 2;
				}else if(arg==3){
					infotype = 3;
				}else if(arg==4){
					infotype = 4;
				}
		}
		var log = setInterval(function(){
				if(infotype==1){
					sendmsg = "<%=basePath %>login/getlog.arma";
				}else if(infotype==2){
					sendmsg = "<%=basePath %>login/getcmd.arma";
				}else if(infotype==3){
					sendmsg = "<%=basePath %>login/geterror.arma";
				}else if(infotype==4){
					sendmsg = "<%=basePath %>login/getadmin.arma";
				}
				$.ajax({
					url:sendmsg,
					type:'post',
					dataType:'json',
					contentType:'application/json',
					success:function(arg){
						if(infotype==1){
							document.getElementById("user-intro").value=arg.log;
						}else if(infotype==2){
							document.getElementById("user-intro").value=arg.cmd;
						}else if(infotype==3){
							document.getElementById("user-intro").value=arg.error;
						}else if(infotype==4){
							document.getElementById("user-intro").value=arg.admin;
						}
					}
				});
			},2000);
		
		var pla = setInterval(function(){
			$.ajax({
				url:'<%=basePath %>login/getplayers.arma',
				type:'post',
				dataType:'json',
				contentType:'application/json',
				success:function(arg){
					if(arg.code="ok"){
						var str = arg.cmd;
						str = str.substr(str.length-22);
						var reg = /[^\(\)]+(?=\))/g;
						var res = str.match(reg).toString();
						var th = res.replace("players in total","");
						document.getElementById("player").innerHTML="☺ "+th+"人正在游戏";
					}else{
						document.getElementById("player").innerHTML="☺ Erorr 正在游戏";
					}
				}
			});
		},60000);
		
		function Cmdtype(args){
			var typestr = args;
			var str = "players";
			if(typestr==1){
				str = "shutdown";
			}else if(typestr==2){
				str = "restart";
			}else if(typestr==3){
				str = "lock";
			}else if(typestr==4){
				str = "unlock";
			}
			$.ajax({
				url:'<%=basePath %>login/sendcmd.arma?cmd='+str,
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
		
		function SendMeg() {
			var strmsg = document.getElementById("user-name-cmd").value;
			$.ajax({
				url:'<%=basePath %>login/message.arma?cmd='+strmsg,
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
		function Saymsg(){
			var saycmd = document.getElementById("user-name-say-cmd").value;
			var saymsg = document.getElementById("user-name-say-msg").value;
			$.ajax({
				url:'<%=basePath %>login/say.arma?cmd='+saycmd+'&msg='+saymsg,
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
		
		function Sendtypecmd(args){
			var secmdtype = "miss";
			var msg = "players";
			if(args==1){
				msg = document.getElementById("user-name-cmd-miss").value;
				secmdtype = "miss";
			}else{
				msg = document.getElementById("user-name-cmd-kick").value;
				secmdtype = "kick";
			}
				$.ajax({
				url:'<%=basePath %>login/misscmd.arma?typecmd='+secmdtype+'&cmd='+msg,
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
		
		function Execcmdtable(args){
			var secmdtype = "players";
			if(args==1){
				secmdtype = "reassign";
			}else if(args==2){
				secmdtype = "missions";
			}else if(args==3){
				secmdtype = "players";
			}
				$.ajax({
				url:'<%=basePath %>login/execcmdtable.arma?typecmd='+secmdtype,
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