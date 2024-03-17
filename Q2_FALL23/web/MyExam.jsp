<%-- 
    Document   : MyExam
    Created on : Mar 16, 2024, 12:34:22 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addServlet">
            <table border="0">
       
                <tbody>
                    <tr>
                        <td>Code: </td>
                        <td>
                            <input type="text" name="code" value="${code}" />
                        </td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <input type="text" name="name" value="${name}" />
                        </td>
                    </tr>
                    <tr>
                        <td>Number of carriages: </td>
                        <td>
                            <input type="password" name="number" value="${number}" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Add" />
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form>
        
        <h3>
            ${mess}
        </h3>
            <c:set var="list" value="${sessionScope.list}" />
        <table border="1">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Number </th>
                </tr>
            </thead>
            <tbody>
                for(Train train : list)
                <c:forEach var="train" items="${list}">
                    <tr>
                        <td>${train.code}</td> 
                        <td>${train.name}</td>
                        <td>${train.number}</td> 
                    </tr>

                </c:forEach>
            </tbody>
        </table>

        
    </body>
</html>
