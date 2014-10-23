
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ChennaiShoppers.Model.Product" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>item</title>
    </head>
    <body>
        <p class ="bread"><a href="index.jsp">Home-></a><a href="CatalogController?param=category">Catalog-></a><a href="CatalogController?param=category">Item</a></p>
        <%@ include file="header.jsp" %>
        <%@ include file="user-navigation.jsp" %>
        <%@ include file="site-navigation.jsp" %>
        <%@ include file="footer.jsp" %>
       
        <!--<a href='index.jsp' class='ihomepage'>Home</a><p class="igt">></p><a class="icata" href="catalog.jsp">Catalog</a><p class="gt1">></p><a class="item" href="item.jsp">Item</a>-->
        
        <div id="itemright">
            <%
                ArrayList<Product> pc=(ArrayList<Product>)request.getAttribute("productdetails");
               
              for(Product p:pc)
              {
                %>
               <%-- <h3 id="h3"><%=session.getAttribute("productCode")%></h3> --%>
                <h3 id="h3"><%=p.getProductName()%></h3>
                <p id="type"><%=p.getCatalogCategory()%></p>
                <p id="price"><%=p.getPrice()%></p>
                <p id="h31">Specs:<br><%= p.getDescription()%></p>
                <img id="image" src="images/<%= p.getUrl()%>" alt="<%= p.getProductName()%>">
                <%
              }
                %>
                <!--<form action="cart.jsp">-->
                <!--<a href="OrderController?param=session.getAttribute(\"productCode\")">-->
                <form action="OrderController" method="get" >
                    <input type="hidden" name="productcode" value="<%=session.getAttribute("productCode")%>">
                    <input type="submit" class="atoc" name = "cartButton" value="Add to Cart">
                </form>
                <a class="cat" href="CatalogController?param=category">Return to Catalog</a>
                
 
        
        </div>
       
    </body>
</html>
