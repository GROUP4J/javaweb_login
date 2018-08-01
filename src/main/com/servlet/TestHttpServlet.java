package main.com.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;

/**
 * Created by shun on 2018/7/31.
 */


public class TestHttpServlet extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        System.out.println("service");

        System.out.println(req.getParameter("user"));
        System.out.println("------------");
        // System.out.println(Arrays.asList(req.getParameterValues("shop")));
        System.out.println("------------");
        Map<String, String[]> params = req.getParameterMap();
        for (String key : params.keySet()) {
            System.out.println(key + "=" + Arrays.asList(params.get(key)));
        }
        System.out.println("------------");
        Enumeration<String> enums = req.getParameterNames();
        while (enums.hasMoreElements()) {
            String paramName = enums.nextElement();
            String paramValue = req.getParameter(paramName);
            System.out.println(paramName + "=" + paramValue);
        }
        res.setContentType("application/msword");
        res.getWriter().write("from servlet service method");
        HttpSession session = req.getSession();

        String user = (String) session.getAttribute("loginName");
        System.out.println(user + ", sessionId:" + session.getId());


        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            System.out.println(cookies.length);
            for (Cookie cookie : cookies) {
                //...
                System.out.println(cookie.getComment());
                System.out.println(cookie.getName() + ":" +  cookie.getValue());

            }
        }
    }

}
