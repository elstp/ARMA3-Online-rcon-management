<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>ELSTP-服务器内部异常</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" type="text/css" href="<%=basePath %>resources/error/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="<%=basePath %>resources/error/css/style2.css" />
		<script type="text/javascript" src="<%=basePath %>resources/error/js/modernizr.custom.86080.js"></script>
    </head>
    <body id="page">
        <ul class="cb-slideshow">
            <li><a href="http://kissanime.ru/Anime/Koe-no-Katachi"><span>Image 01</span><div><h3>服务器内部错误 500</h3></div></a></li>
            <li><span>Image 02</span><div><h3>服务器娘出错啦!</h3></div></li>
            <li><span>Image 03</span><div><h3>请联系站长邮箱</h3></div></li>
            <li><span>Image 04</span><div><h3>elstpserver@qq.com</h3></div></li>
            <li><span>Image 05</span><div><h3>服务器内部错误 500</h3></div></li>
            <li><span>Image 06</span><div><h3>500 - Server Error</h3></div></li>
        </ul>
<video onloadstart="this.volume=0.1" src="<%=basePath %>resources/error/images/1.ogg" id="myvideo" width="320" height="240" controls autoplay loop>
</video>
    </body>
</html>