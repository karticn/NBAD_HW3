
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ChennaiShoppers.Model.Product" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>catalog</title>
    </head>
    <body>
        <p class ="bread"><a href="index.jsp">Home-></a><a href="CatalogController?param=category">Catalog</a></p>
        <%@ include file="header.jsp" %>
        <%@ include file="user-navigation.jsp" %>
        <%@ include file="site-navigation.jsp" %>
        <%@ include file="footer.jsp" %>
        <!--<a href='index.jsp' class='homepage'>Home</a><p class="gt">></p><a class="cata" href="catalog.jsp">Catalog</a>-->
        
        <div id="catal">
            <%
               ArrayList<Product> pc=(ArrayList<Product>)request.getAttribute("productdetails");
               HashMap<Integer,String> temp=new HashMap<Integer,String>();
               HashSet<Integer> code=new HashSet<Integer>();
               for(Product p:pc)
               {
                   code.add(p.getCategoryCode());
                   temp.put(p.getCategoryCode(),p.getCatalogCategory());
              
               }     
                for(int s:code)
                   {                     
                        
                       %>
                    
                      
                       <p><a href="CatalogController?param=<%=s%>"><%=temp.get(s)%></a></p>
                      <%
                      for(Product p:pc)
                      {
                          if(s==p.getCategoryCode())
                          {
                             %>
                       <ul>
                    <li><a href="CatalogController?param=<%=p.getProductCode()%>"><%=p.getProductName()%></a></li>
                    </ul>
                       <%
                          }
                      }
                      %>
                    
                    <%
                   }
               
                %>
        </div>           
    </body>
</html>
