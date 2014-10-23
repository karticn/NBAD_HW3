
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
     <p class ="bread"><a href="index.jsp">Home-></a><a href="contact.jsp">Contact Us</a></p>
     <%@ include file="header.jsp" %> 
     <%@ include file="user-navigation.jsp" %>
     <%@ include file="site-navigation.jsp" %>
     <%@ include file="footer.jsp" %>
     
        
       <div id="right">
           <p class ="cont">
               Address: 9500 University Terrace Drive, Charlotte, NC - 28262<br>
               Mobile: (980) 829-6700, (980) 636-3327 <br>
               <span id="email">email: <a href="mailto:49ers@uncc.edu">49ers@uncc.edu</a></span>
           </p>
       </div>
                  
    </body>
</html>
