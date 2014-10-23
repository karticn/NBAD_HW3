
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>header</title>
    </head>
    <body>
        <div id='test'><p><img class ="logo" src="images/logo.png" alt="Logo">Shopping</p></div>
        <%
            HttpSession sess1=request.getSession();
            String name=(String)sess1.getAttribute("username");
            if(name!=null)
            {
                %>
        
          <p id='note'><%=name%></p>
        <%
            }
            else
            {
                %>
        
          <p id='note'>Ram Kartic</p>
        <%  
            }
        %>
      
    </body>
</html>
