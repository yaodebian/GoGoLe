这是一个简单的购物网页，基于JSP和servlet编写，上面是通过eclipse工具导出的war包，运行该项目需要进行下面几步：

注：服务器为Tomcat服务器，数据库为MySql数据库，在运行项目之前先下载MySql相应的JDBC并拷贝到相应的TOMCAT的lib目录中

1.创建数据库：数据库文件为上面的 GoGOLe.sql;
2.配置TOMCAT服务器中的server.xml,Host标签内添加如下:
        <Context path="/gole" docBase="项目WebContent的地址" reloadable="true">
         <Resource name="jdbc/mydb"
          auth="Container"
          type="javax.sql.DataSource"
          maxActive="100"
          maxIdle="30"
          maxWait="10000"
          username="数据库用户名"
          password="这里填写数据库密码"
          driverClassName="org.gjt.mm.mysql.Driver"
          url="jdbc:mysql://localhost:3306/loginmanage" />
        </Context> 
3.打开TomCat服务器，在浏览器中输入"localhost+（:端口号）+/gole/index"运行项目;
4.关于这个小demo的详细的描述，详见：https://blog.csdn.net/yaodebian/article/details/79829812，相关赘述仅供参考。