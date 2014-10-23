
<%@page import="ChennaiShoppers.Model.OrderItem"%>
<%@page import="ChennaiShoppers.Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>cart</title>
    </head>
    <body>
        <p class ="bread"><a href="index.jsp">Home-></a><a href="CatalogController?param=category">Catalog-></a><a href="item.jsp">Item-></a><a href="cart.jsp">Cart</a></p>
        <%@ include file="header.jsp" %>
        <%@ include file="user-navigation.jsp" %>
        <%@ include file="site-navigation.jsp" %>
        <%@ include file="footer.jsp" %>
         <!--<a href='index.jsp' class='ihomepage'>Home</a><p class="igt">></p><a class="icata" href="catalog.jsp">Catalog</a><p class="gt1">></p><a class="item" href="cart.jsp">Cart</a>-->
         
        <div id="cartright">
            <form action="OrderController" method = "get">
            <table id="ctable">
                
                <tr>
                <th class="cth">Item</th>
                <th class="cth">Price</th>
                <th class="cth">Quantity</th>
                <th class="cth">Total</th>
                </tr>
                <% HttpSession sess=request.getSession();
                 //   String p1=(String)session.getAttribute("productCode").toString();%>
                <%
                
                ArrayList<OrderItem> cart=(ArrayList<OrderItem>)sess.getAttribute("cartvalues");
                 int sum=0;
             int tempval=0;
               for(OrderItem prod:cart)
                {
                    Product p=prod.getProduct();
                    int price=Integer.parseInt(p.getPrice());
                    tempval=p.getProductCode();
                    %>
                    <tr>
                       <td class="ctd"><%=p.getProductName()%></td>
                    <td class="ctdn"><%=p.getPrice()%></td>
                    <input type="hidden" name="hiddenprod" value="<%=p.getProductCode()%>">
                    <td class="ctd"><input class="qinput" type=text name="Quantity" value="<%=prod.getQuantity()%>"></td>
                    <td class="ctdn"><%=price*prod.getQuantity()%></td>
                </tr>
                    <%
                    sum=sum+(price*prod.getQuantity());
                }
                
                %>
                
               </table>
                <p class="subtot">Subtotal</p>
                <p class="amnt"><%=sum%></p>
                <input type="submit" class="updcart" name="cartButton" value="UpdateCart"/>
                <input type="submit" class="chkcart" name="cartButton" value="Checkout"/>
                
            </form>

                    

        </div>
    </body>
</html>
