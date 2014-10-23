
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
     <p class ="bread"><a href="index.jsp">Home-></a><a href="about.jsp">About</a></p>
     <%@ include file="header.jsp" %> 
     <%@ include file="user-navigation.jsp" %>
     <%@ include file="site-navigation.jsp" %>
     <%@ include file="footer.jsp" %>
     
        
       <div id="rightpane">
           <p class = "lfont">Welcome to 49er's Shopping experience. Founded in 2KY, 49er's Shopping ® lives at the intersection of marketing and customers. Our e-shopping platform connects multiple customers with their products, in real time, to turn big needs into actionable insights for our customers.</p>
           <p class = "lfont">We are completely self-funded and virtually debt free.  We have no angel investors, venture capital or private equity firms to distract us from innovating customer engagement solutions...!</p>
       </div>        
    </body>
</html>
