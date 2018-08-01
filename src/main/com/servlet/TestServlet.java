package main.com.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created by shun on 2018/7/31.
 */

//@WebServlet(name="testServlet", urlPatterns="/testServlet",loadOnStartup=-1)
public class TestServlet implements Servlet {
    private transient ServletConfig servletConfig;

    public void init(ServletConfig config) throws ServletException {
        this.servletConfig = config;
        System.out.println("user : " + servletConfig.getInitParameter("user"));
        System.out.println("pass : " + servletConfig.getInitParameter("pass"));

        Enumeration<String> enums = servletConfig.getInitParameterNames();
        while(enums.hasMoreElements()){
            String paramName = enums.nextElement();
            String paramValue = servletConfig.getInitParameter(paramName);

            System.out.println(paramName + "-" + paramValue);
        }


        ServletContext context = servletConfig.getServletContext();
        context.getInitParameter("country");
        Enumeration<String> contextParams = context.getInitParameterNames();
        while(contextParams.hasMoreElements()) {
            String paramName = contextParams.nextElement();
            String paramValue = context.getInitParameter(paramName);

            System.out.println(paramName + "-" + paramValue);
        }

        // 获取当前web程序的context path,也可以说是程序名称
        System.out.println(context.getContextPath());

        System.out.println(context.getRealPath("index.jsp"));
        System.out.println("init");
    }

    public ServletConfig getServletConfig() {
        return servletConfig;
    }

    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("service");
    }

    public String getServletInfo() {
        return this.servletConfig.getServletName();
    }

    public void destroy() {
        System.out.println("destroy");
    }

}
