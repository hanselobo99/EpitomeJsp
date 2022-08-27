<%-- 
    Document   : studentsCount
    Created on : 23-Aug-2022, 2:10:37 pm
    Author     : hansel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    </head>
    <body>
        <form action="addStudents.jsp" method="POST">
             <div class="row">
                <div class="offset-3 col-6">

                    <div class="form-group">
                        <label >Enter count of students</label>
                        <input name="count" type="number" max="15" min="1" required class="form-control" placeholder="Enter Count">
                     
                    </div>
                    <br><br>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
             </div>
        </form>

    </body>
</html>
