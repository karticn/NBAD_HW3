
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>homepage</title>
    </head>
    <body>
     <!--<a href='index.jsp' class='breadhome'>Home</a>-->
     <p class ="bread"><a href="index.jsp">Home</a></p>
     <%@ include file="header.jsp" %> 
     <%@ include file="user-navigation.jsp" %>
     <%@ include file="site-navigation.jsp" %>
     <%@ include file="footer.jsp" %>
       
     <div id="rightpane">
           <p class = bfont> Welcome to 49er's online shopping. We are the online retailers of all day to day essential accessories and Electronics.
           <br>Currently we are available only in United States and planning to expand the business to all other countries at our best.</p>
       </div>
    </body>
</html>
