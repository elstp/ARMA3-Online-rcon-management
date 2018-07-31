<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
	if(request.getSession().getAttribute("islogin") != null){
		boolean BE = (boolean)request.getSession().getAttribute("islogin");
		if(BE){
			response.sendRedirect(basePath+"pages/admin/index.jsp");
		}
	}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>ELSTP-ARMA3-RCON在线管理</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/css/fontAwesome.css">
        <link rel="stylesheet" href="resources/css/light-box.css">
        <link rel="stylesheet" href="resources/css/templatemo-main.css">
		<link rel="stylesheet" href="resources/css/layui.css">
		<link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/component.css" />
		<link rel="stylesheet" href="resources/assets/css/amazeui.min.css"/>



    </head>

<body>
    
    <div class="sequence">
  
      <div class="seq-preloader">
        <svg width="39" height="16" viewBox="0 0 39 16" xmlns="http://www.w3.org/2000/svg" class="seq-preload-indicator"><g fill="#F96D38"><path class="seq-preload-circle seq-preload-circle-1" d="M3.999 12.012c2.209 0 3.999-1.791 3.999-3.999s-1.79-3.999-3.999-3.999-3.999 1.791-3.999 3.999 1.79 3.999 3.999 3.999z"/><path class="seq-preload-circle seq-preload-circle-2" d="M15.996 13.468c3.018 0 5.465-2.447 5.465-5.466 0-3.018-2.447-5.465-5.465-5.465-3.019 0-5.466 2.447-5.466 5.465 0 3.019 2.447 5.466 5.466 5.466z"/><path class="seq-preload-circle seq-preload-circle-3" d="M31.322 15.334c4.049 0 7.332-3.282 7.332-7.332 0-4.049-3.282-7.332-7.332-7.332s-7.332 3.283-7.332 7.332c0 4.05 3.283 7.332 7.332 7.332z"/></g></svg>
      </div>
      
    </div>
    
  
        <nav>
          <div class="logo">
              <img src="resources/img/logo.png" alt="">
          </div>
          <div class="mini-logo">
              <img src="resources/img/mini_logo.png" alt="">
          </div>
          <ul>
            <li><a href="#1"><i class="fa fa-home"></i> <em>欢迎</em></a></li>
            <li><a href="#2"><i class="fa fa-user"></i> <em>登录</em></a></li>
            <li><a href="#3"><i class="fa fa-pencil"></i> <em>教程</em></a></li>
          </ul>
        </nav>
        
        <div class="slides">
          <div class="slide" id="1">
            <div class="content first-content">
              <div class="container-fluid">
                  <div class="col-md-3">
                     <!-- <div class="author-image"><img src="img/author_image.png" alt=""></div>-->
                  </div>
                  <div class="col-md-9">
                      <h2>ELSTP RCON在线管理</h2>
                      <p>ELSTP <em>BattleEye</em>, ARMA3 在线RCON管理器. <em>本页面可管理ARMA3 RCON提供各类命令,提供API接口,可接入机器人或其他工具。内置多种可选命令</em> 请使用您的RCON账号与密码进行登录.快速，高效执行rcon指令,本管理工具遵循并使用BattlEye RCon协议规范v2<br/><em>ARMA3 RCON是什么?</em><br/>RCON即远程管理的意思,一般使用在服务器上,用于获得管理员权限,可向远程服务器发送指令，例如踢人封禁等等功能!<br/><em>它能干什么?</em><br/>它能管理所有使用此协议的A3游戏服务器,arma3的服务端是不支持直接键入命令的,但是通过第三方工具(使用此协议的工具)即可管理连接到Battleye的服务器。<br/><em>它是如何工作的?</em><br/>您的浏览器-->发送登录请求到在线管理服务器-->发送登录数据包(必须启用battleye反作弊)-->服务器返回登录确认数据包(UDP)-->持续发送心跳包(保存管理员在线)。由于UDP的不可靠性，在线控制台可能会出现数据包丢失问题(与battleye连接丢失)，需要您注销在线控制台并重新登录。</p>
                      <div class="main-btn"><a href="#3">RCON设置方法</a></div>
                      <div class="main-btn"><a href="#2">立即登录</a></div>
                  </div>
              </div>
            </div>
          </div>
          <div class="slide" id="2">
            <div class="content second-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <div class="left-content">
                            <h2>登录ARAM3 RCON管理器</h2>
					<center>
				<form action="#" method="post" onsubmit="return false" id="postdata">
					<div>
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="text" id="input-4" name="ip"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi">服务器RCON IP</span>
					</label>
				</span>
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="password" id="input-5" name="password"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="input-5">
						<span class="input__label-content input__label-content--hoshi">服务器RCON 密码</span>
					</label>
				</span>
				<span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="text" id="input-6" name="port"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-3" for="input-6">
						<span class="input__label-content input__label-content--hoshi">服务器RCON 端口</span>
					</label>
				</span>
				 </div>
				    <div class="main-btn"><a id="subt" class="subt" href="#">立即登录至服务器</a></div>
				 </form>
				 </center>
                       
                      </div>
                    </div>
                    <div class="col-md-6">
							<!--左边区域-->
                    </div>
                </div>
            </div>
          </div>
          
          <div class="slide" id="3">
            <div class="content third-content">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="first-section">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="left-content">
                                                &nbsp;<h2 style="text-align: center;">ARMA3-RCON设置教程</h2>
                                                &nbsp;<p>
                                                	&nbsp;批处理文件开服:<br/>&nbsp;右击以文本打开,找到开服参数 -profiles= 某个文件夹 将BEServer.cfg文件放入BattlEye文件夹-->右键编辑文件信息,重启后随机生成一个文件代表配置完成且成功<br/>
                                               &nbsp;TADST工具开服:<br/>&nbsp;在开服参数找到-profiles=指定的文件夹内 将BEServer.cfg文件放入BattlEye文件夹-->右键编辑文件信息,重启后随机生成一个文件代表配置完成且成功
                                                </p>
                                         <div class="main-btn">&nbsp;<a onclick="dow1()" href="#3">下载文件(X64位)</a>   <a onclick="dow2()"  href="#3">下载文件(X32位)</a></div>
                                            </div>
                                                   
                                        </div>
 												<div class="col-md-6">
                                            <div class="right-image">
                                                 &nbsp;<h2 style="text-align: center;">ELSTP-关于我们</h2>
                                                &nbsp;<p>ELSTP STUDIO <br/>联系站长 <br/>QQ:1179163813 <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1179163813&site=qq&menu=yes">在线咨询</a> <br/>QQ:1164581159 <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1164581159&site=qq&menu=yes">在线咨询</a><br/>邮箱: <a href="mailto:elstpserver@qq.com">elstpserver@qq.com</a><br/>邮箱: <a href="mailto:elstp_gf@foxmail.com">elstp_gf@foxmail.com</a></p>
                                                
                                            <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=64dd60c1ef100cee53425ad3387d3ab6671070a6ba9e691e345853701e716420">加入技术交流群</a>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="second-section">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="left-image">
                                              
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="right-content">
                                                
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
                </div>
            </div>
          </div>
          
          <div class="slide" id="5">
            <div class="content fifth-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        
                    </div>
                    <div class="col-md-6">
            <div class="footer">
          <div class="content">
              <p>Copyright &copy; 2018 ELSTP Company . <a href="http://www.arma3bbs.com">网站</a> by <a href="#" target="_parent">ELSTP Studio</a></p>
          </div>
        </div>
                    </div>
                </div>
            </div>
          </div>
    
		

<video onloadstart="this.volume=0.1" src="resources/error/images/1.ogg" id="myvideo" width="0" height="0" controls autoplay loop>
  <!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>-->
    <script>window.jQuery || document.write('<script src="resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="resources/js/datepicker.js"></script>
    <script src="resources/js/plugins.js"></script>
    <script src="resources/js/main.js"></script>

	<script src="resources/assets/js/amazeui.min.js"></script> 
	<script src="resources/assets/js/amazeui.dialog.min.js"></script>
    <!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>-->
    <script type="text/javascript">
    $(document).ready(function() {

        

        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
	
	<script src="resources/js/classie.js"></script>
		<script>
			(function() {
				// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
				if (!String.prototype.trim) {
					(function() {
						// Make sure we trim BOM and NBSP
						var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
						String.prototype.trim = function() {
							return this.replace(rtrim, '');
						};
					})();
				}

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
			
			function dow1(){
				window.location.href='http://www.arma3bbs.com/dow/be/BEServer_x64.zip';
			}
			function dow2(){
				window.location.href='http://www.arma3bbs.com/dow/be/BEServer_x32.zip';
			}
		</script>
<script type="text/javascript">
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
		
			$("#subt").click(function(){
				$.ajax({
					url:'<%=basePath %>login/connect.arma',
					type:'post',
					dataType:'json',
					contentType:'application/json',
					data:$("#postdata").serializeObject(),
					success:function(arg){
						if(arg.code=="true"){
							location.href="<%=basePath %>pages/admin/index.jsp";
						}else if(arg.code=="false"){
							AMUI.dialog.alert({
								  title: 'Error',
								  content: '连接Battleye失败!',
								  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
								    }
								});
						}else if(arg.code=="error"){
							if(arg.password==undefined){
								arg.password = "";
							}
							if(arg.ip==undefined){
								arg.ip = "";
							}
							if(arg.port==undefined){
								arg.port = "";
							}
							AMUI.dialog.alert({
								  title: 'Error:',
								  content: arg.ip+'\t'+arg.password+'\t'+arg.port,
								  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
								    }
								});
						}else if(arg.code=="errors"){
							AMUI.dialog.alert({
								  title: 'Error:',
								  content: arg.message,
								  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
								    }
								});
						}else{
							AMUI.dialog.alert({
								  title: 'Error:',
								  content: '服务器未知错误!',
								  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
								    }
							});
						}
					}
				});
				AMUI.dialog.alert({
					  title: '服务器提示:',
					  content: '正在连接Battleye...',
					  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
					    }
				});
			});
</script>
</body>
</html>