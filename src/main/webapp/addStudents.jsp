<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Students</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    </head>
    <body>
        <%! int num = 1; %>
        <%! int i = 0;%>

        <%
            String[] names = {"cloud", "kingdom", "blue", "governor", "bless", "berry", "canal", "particle", "spite", "you",
                    "try", "rid", "republic", "pris", "concern"};
            String[] contact = {"9607400384", "0252640078", "0461222699", "5426947910", "3254257175", "1861606180", "9057199603",
                    "6510003298", "3522084519", "1256301148", "6865857726", "6706920133", "8793241009", "7517424090", "0591007068"};
            
            int total = Integer.valueOf(request.getParameter("count").toString());
            


        %>



        <form method="post" action="selectEvents.jsp">
            <input type="hidden" value="<% out.print(total); %>" name="total"> 
            <button type="submit">Submit</button>
            <%while (num <= total) { %>
            <jsp:include page="studDetails.jsp">
                <jsp:param name="studNo" value="<%= num %>"/>
                <jsp:param name="name" value="<%= names[i] %>"/>
                <jsp:param name="mail" value="<%= names[i]+"@gmail.com" %>"/>
                <jsp:param name="contact" value="<%= contact[i] %>"/>
            </jsp:include>
            <%
                    num++;
                    i++;
                }
            %>
        </form>
        <% 
        num =1;
        i =0;
        %>
    </body>
</html>
