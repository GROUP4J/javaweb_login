# javaweb_login
javaweb的登录程序，实现了cookie的存储以及session的存储，学习了web.xml的配置，servlet的使用  
登录页为localhost:8080/login.html  
登录页登录账号：shi  密码：123456，其他不能通过验证，调用LoginServlet，设置cookie和session，前端可看到cookie的设置  
首页为localhost:8080 ，打开后随便输入，提交后调用IndexServlet，会取cookie和session中的数据并在后端打印，与前端cookie对比