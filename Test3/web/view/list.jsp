<%-- 
    Document   : list
    Created on : Mar 15, 2024, 10:26:39 AM
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
        <table border="1px"> 
            <tr>
                <td>id</td>
                <td>title</td>
                <td>published_date</td>
                <td>online</td>
            </tr>
            <c:forEach items="${requestScope.articles}" var="a">
                <tr>
                    <td>${a.aid}</td>
                    <td>${a.title}</td>
                    <td>${a.published_date}</td>
                    <td>${a.online?"online":"offline"}</td>


                </c:forEach>
                </body>
                </html>
