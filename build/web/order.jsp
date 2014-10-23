<%@page import="ChennaiShoppers.Model.User"%>
<%@page import="ChennaiShoppers.Model.Product"%>
<%@page import="ChennaiShoppers.Model.OrderItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type="text/css" href='stylesheet.css'>
        <title>cart</title>
    </head>
    <body>
        <p class ="bread"><a href="index.jsp">Home-></a><a href="cart.jsp">Order-></a><a href="order.jsp">Invoice</a></p>
        <%@ include file="header.jsp" %>
        <%@ include file="user-navigation.jsp" %>
        <%@ include file="site-navigation.jsp" %>
        <%@ include file="footer.jsp" %>
         <!--<a href='index.jsp' class='ihomepage'>Home</a><p class="igt">></p><a class="icata" href="catalog.jsp">Catalog</a><p class="gt1">></p><a class="item" href="cart.jsp">Cart</a>-->
         
        <div id="cartright">
            <form action="cart.jsp">
            <div class="invoice">
                <%
                HttpSession sess=request.getSession();
                ArrayList<User> uservalues=(ArrayList<User>)sess.getAttribute("UserValues");
                String firstname=null,lastname=null,addressfield1=null,addressfield2=null,city=null,state=null,country=null;
                int postcode=0;
                for(User s: uservalues)
                {
                    if(uservalues.indexOf(s)==1)
                    {
                        firstname=s.getFirstName();
                        lastname=s.getLastName();
                        addressfield1=s.getAddressField1();
                        addressfield2=s.getAddressField2();
                        city=s.getCity();
                        state=s.getStateRegion();
                        postcode=s.getPostCode();
                        country=s.getCountry();
                    }
                }
                 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
                 Date date = new Date();
                %>
                <p class ="bfont" >Invoice</p>
                Date: <%=dateFormat.format(date)%><br>
                Ship To / Bill To:  <%=firstname+" "+lastname%><br>
               <%=addressfield1%><br>
                <%=addressfield2%><br>
                <%=city%><br>
                <%=state%> <%=postcode%><br>
            </div>
                <%
              
                ArrayList<OrderItem> cartvalues=(ArrayList<OrderItem>)sess.getAttribute("cartvalues");
                %>
            <div>
            <table id="ctable1">
                <tr>
                <th class="cth">Item</th>
                <th class="cth">Price</th>
                <th class="cth">Quantity</th>
                <th class="cth">Total</th>
                </tr>
                
                <%
                int sum=0;
                for(OrderItem s:cartvalues)
                {
                    Product p=new Product();
                    p=s.getProduct();
                    
                    %>
                    <tr>
                         <td class="ctd"><%=p.getProductName()%></td>
                    <td class="ctdn"><%= p.getPrice()%></td>
                    <td class="ctdn"><%=s.getQuantity()%></td>
                    <td class="ctdn"><%=Integer.parseInt(p.getPrice())*s.getQuantity()%></td>
                        
                    </tr>
                    
                    <%
                     sum=sum+(Integer.parseInt(p.getPrice())*s.getQuantity());
                }
                %>
               
            </table>
            </div>
                <p class="subtot1">
                    Subtotal<br>
                    Tax<br>
                    Total
                </p>
                <p class="amnt1">
                    <%=sum%><br>
                    <%=sum/10%><br>
                    <%=sum+(sum/10)%>
                </p>
                <input type="submit" class="bck2cart" value="Back To Cart"/>
                </form>
            <form action="cart.jsp">
                <a class = "but" href="CatalogController?param=category"<input type="button" class="purchase" value="Purchase"/>Purchase</a>
            </form>   
       </div>
    </body>
</html>
