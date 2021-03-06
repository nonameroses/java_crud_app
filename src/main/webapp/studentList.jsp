<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <style>
        header, footer{
            position: center;
            background-color: #7d38af;
            width: 100%;
            height: 10%;
        }


        .content-table{
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 900px;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0,0,0,.3);

        }
        .content-table thead tr {
            background-color: #7917cd;
            text-align: center;
            font-weight: bold;
        }
        .content-table th{
            background-color: #7d38af;
            font-weight: bold;
        }
        .content-table th,
        .content-table td{
            padding: 12px 15px;

        }
        .content-table tbody tr{
            border-bottom: 1px solid #dddddd;
        }
        .content-table tbody tr:nth-of-type(even){
            background-color: #f3f3f3;
        }
        .content-table tbody tr :last-of-type{
            border-bottom: 2px; solid-color:  #7d38af;
        }
    </style>
    <title>Books Store Application</title>
</head>
<body>
<center>
    <header>
        <h1>Student Management</h1>
        <h2 align="center">
            <a href = "${pageContext.request.contextPath}/studentForm.jsp">Add new Student</a>
            &nbsp;&nbsp;&nbsp;
            <a href = "${pageContext.request.contextPath}/ControllerServlet" >List all Students</a>

        </h2>
    </header>

</center>
<div align="center">
    <table border="2" cellpadding="5" class = "content-table">
        <caption><h2>List of Students</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Course</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${requestScope.listStudent}">
            <tr>
                <td><c:out value="${student.id}" /></td>
                <td><c:out value="${student.name}" /></td>
                <td><c:out value="${student.course}" /></td>
                <td><c:out value="${student.age}" /></td>
                <td>

                    <div align="center">
                        <a href="${pageContext.request.contextPath}/edit?id=<c:out value='${student.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/delete?id=<c:out value='${student.id}' />">Delete</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<footer>
    <h2>&copy; Copyright Reserved.</h2>
</footer>
</body>
</html>