<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Select Events</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>
<body>

    <h1>Select participants</h1>
<%
    String[] Events = {"PeakyBlinders", "mosaic", "SuperMario", "Abacus", "Obscura", "TakeshisCastle", "BoogieVoogie", "BellBottom", "Pixar"};
    int[] NoOfPart = {1, 2, 2, 2, 1, 3, 1, 2, 1};
    int total = Integer.parseInt(request.getParameter("total"));
    String names[] = new String[15];
    for (int i = 0; i <= total; i++) {
        names[i] = request.getParameter("name" + (i + 1));
    }
%>
<form method="post" action="viewParticipants.jsp">
    <input type="hidden" value="<% out.print(total); %>" name="total">
    <div class="row">
        <div class="offset-3 col-6">

            <table class="table">
                <%
                    for (int i = 0; i < Events.length; i++) {
                %>
                <tr>
                    <td><%= Events[i] %>
                    </td>

                    <% for (int j = 1; j <= NoOfPart[i]; j++) {
                    %>
                    <td>
                        <select class="form-select"  name="<%= Events[i] %><%= j %>">
                            <option value="${null}">null</option>
                            <%
                                for (int p = 0; p < total; p++) {
                            %>
                            <option value="<%= names[p] %> "><%= names[p] %>
                            </option>
                            <%
                                }

                            %>
                        </select>

                    </td>
                    <%

                        }
                    %>

                </tr>

                <%
                    }
                %>
                <tr>
                    <td colspan="4">
                        <button type="submit">Submit</button>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</form>
</body>
</html>
