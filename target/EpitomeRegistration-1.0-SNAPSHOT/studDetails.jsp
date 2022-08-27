<% String studNo = request.getParameter("studNo"); %>
<% String name = request.getParameter("name");
 String email = request.getParameter("mail");
 String contact = request.getParameter("contact"); %>

<table class="table">
    <tr>
        <td colspan="2">Student details <% out.print(studNo); %></td>
    </tr>
    <tr>
        <td>Name :</td>
        <td><input class="form-control"  name="name<% out.print(studNo); %>" value ="<% out.print(name); %>" type="text" ></td>
    </tr>
    <tr>
        <td>Email :</td>
        <td><input class="form-control"  name="email<% out.print(studNo); %>" type="email" value ="<% out.print(email); %>"></td>
    </tr>
    <tr>
        <td>Contact :</td>
        <td><input class="form-control"  name="contact<% out.print(studNo); %>" type="text" value ="<% out.print(contact); %>"></td>
    </tr>
    <tr>
        <td>Gender :</td>
        <td><select class="form-select"  name="gender<% out.print(studNo); %>">
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select></td>
    </tr>
</table>