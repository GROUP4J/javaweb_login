package main.com.servlet;

/**
 * Created by shun on 2018/8/1.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");



        //接收参数
        String userName = request.getParameter("userName");
        String userPwd = request.getParameter("userPwd");

        //登录时顺便设置cookie，将用户名存在cookie中
        byte[] utf8Bytes = userName.getBytes("UTF-8");
        String utf8Str = new String(utf8Bytes, "UTF-8");
        Cookie cookie = new Cookie("name", utf8Str);
        cookie.setComment("auth purpose");
        cookie.setMaxAge(3600);
        cookie.setPath(request.getContextPath());
        response.addCookie(cookie);

        //判断登陆是否成功
        if(userName.equals("shi") && userPwd.equals("123456")) {
            //登陆成功

            //创建session对象
            HttpSession session = request.getSession();
            //把用户数据保存在session域对象中
            session.setAttribute("loginName", userName);
            //跳转到用户主页
            response.sendRedirect(request.getContextPath()+"/indexServlet");
        } else {
            //登陆失败，请求重定向
            response.sendRedirect(request.getContextPath() + "/fail.html");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
