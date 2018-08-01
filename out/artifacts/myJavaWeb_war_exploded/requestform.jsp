<%@ page import="static javax.servlet.http.HttpUtils.*" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: shun
  Date: 2018/7/31
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>request对象的使用</title></head>
<body bgcolor="#FFFFCC">
<h3 align="center">request对象的使用</h3>
    <table border="1" width="800">
        <tr>
            <td>HttpUtil.getRequestURL(request)</td>
            <td><%=getRequestURL(request)%></td>
        </tr>
        <tr>
            <!--返回发送信息的方式-->
            <td>request.getMethod()</td>
            <td><%=request.getMethod()%></td>
        </tr>
        <tr>
            <!--返回请求的URI字符串-->
            <td>request.getRequestURL(request)</td>
            <td><%=request.getRequestURI()%></td>
        </tr>
        <tr>
            <!--返回通信协议的方式-->
            <td>request.getProtocol()</td>
            <td><%=request.getProtocol()%></td>
        </tr>
        <tr>
            <!--返回程序的相对路径和文件名称-->
            <td>request.getServletPath()</td>
            <td><%=request.getServletPath()%></td>
        </tr>
        <tr>
            <!--返回程序的相对路径和文件名称-->
            <td>request.getPathInfo()</td>
            <td><%=request.getPathInfo()%></td>
        </tr>
        <tr>
            <!--返回发送信息的方式-->
            <td>request.getPathTranslated()</td>
            <td><%=request.getPathTranslated()%></td>
        </tr>
        <tr>
            <!--返回地址栏中后面的字符串-->
            <td>request.getQueryString()</td>
            <td><%=request.getQueryString()%></td>
        </tr>
        <tr>
            <!--返回发送信息的方式-->
            <td>request.getContentType()</td>
            <td><%=request.getContentType()%></td>
        </tr>
        <tr>
            <!--返回发送信息的方式-->
            <td>request.getContentLength()</td>
            <td><%=request.getContentLength()%></td>
        </tr>
        <tr>
            <!--返回服务器主机名称-->
            <td>request.getServerName()</td>
            <td><%=request.getServerName()%></td>
        </tr>
        <tr>
            <!--返回服务器主机连接的端口号-->
            <td>request.getServerPort()</td>
            <td><%=request.getServerPort()%></td>
        </tr>
        <tr>
            <!--返回客户端用户的IP地址-->
            <td>request.getRemoteAddr()</td>
            <td><%=request.getRemoteAddr()%></td>
        </tr>
        <tr>
            <!--返回返回客户端用户的主机名称-->
            <td>request.getRemoteHost()</td>
            <td><%=request.getRemoteHost()%></td>
        </tr>
        <tr>
            <!--返回发送信息的方式-->
            <td>request.getAuthType()</td>
            <td><%=request.getAuthType()%></td>
        </tr>
    </table>
    <h3 align="center">request.getHeaderNames()</h3>
    <table border="1" width="800">
        <%
            Enumeration enu1=request.getHeaderNames();
            while(enu1.hasMoreElements()){
                String names=(String)enu1.nextElement();
        %>
        <tr>
            <!--返回发送信息的方式-->
            <td><%=names%></td>
            <td><%=request.getHeader(names)%></td>
        </tr>
        <%
            }
        %>
    </table>
    <h3 align="center">getParameterNames()</h3>
    <table border="1" width="800">
        <%
            Enumeration enu2=request.getParameterNames();
            while(enu2.hasMoreElements()){
                String names=(String)enu2.nextElement();
        %>
        <tr>
            <!--返回发送信息的方式-->
            <td><%=names%></td>
            <td><%=request.getParameter(names)%></td>
        </tr>
        <%
            }
        %>
    </table>
    </table>
</body></html>
