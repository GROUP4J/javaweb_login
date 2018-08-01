<%--
  Created by IntelliJ IDEA.
  User: shun
  Date: 2018/7/31
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>登录</title>

</head>

<script type="text/javascript">
    //请求函数
    function f2(){
        console.log('start');
        //1.创建AJAX对象
        var ajax = new XMLHttpRequest();

        //4.给AJAX设置事件(这里最多感知4[1-4]个状态)
        ajax.onreadystatechange = function(){
            //5.获取响应
            //responseText		以字符串的形式接收服务器返回的信息
            //console.log(ajax.readyState);
            if(ajax.readyState == 4 && ajax.status == 200){
                var msg = ajax.responseText;
                console.log(msg);
                //alert(msg);
                var divtag = document.getElementById('result');
                divtag.innerHTML = msg;
            }
        }

        //2.创建http请求,并设置请求地址
        ajax.open('post','testHttpServlet');
        //post方式传递数据是模仿form表单传递给服务器的,要设置header头协议
        ajax.setRequestHeader("content-type","application/x-www-form-urlencoded");

        //3.发送请求(get--null    post--数据)
        var username = document.getElementsByTagName('input')[0].value;
        var email = document.getElementsByTagName('input')[1].value;
        username = encodeURIComponent(username);	//对输入的特殊符号(&,=等)进行编码
        email = encodeURIComponent(email);
        var info = 'username='+username+'&email='+email;	//将请求信息组成请求字符串
        ajax.send(info);
    }

</script>
<body>
<h2>ajax请求用户名的校验</h2>
<p>用户名 : <input type="text" name="username" value="" /></p>
<p>邮箱 : <input type="text" name="email" value="" /></p>
<div id="result" style="color:green;"></div>
<input type="button"  value="提交" onclick="f2()" />

</body>




</body>

</html>
