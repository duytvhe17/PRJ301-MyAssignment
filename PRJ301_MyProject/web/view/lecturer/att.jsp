 <%-- 
    Document   : att
    Created on : Mar 1, 2024, 11:15:47 AM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>





<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Of Lecturer</title>
        <style>
            
            table {
                border-collapse: collapse; 
                width: 100%; 
                

            }

           
            .table_header {
                background-color: #0645AD; 
                color: white; 
                border: 3px solid black; 
                padding: 10px; 
                text-align: center;
                
            }

            
            td {
                border: 3px solid black; 
                padding: 10px; 
                text-align: center; 
            }

           
            tr:nth-child(even) {
                background-color: #ddd; 
            }

            .container {
                display: flex; 
                justify-content: space-between; 
                align-items: center;
                padding: 10px; 
                border: 3px solid #ccc; 
                padding: 10px; 
                margin-bottom: 20px; 
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); 
            }
            .title {
                flex-grow: 1; 
                text-align: center; 
            }
            .footer {
                border: 1px solid #ccc; 
                padding: 10px; 
                margin-bottom: 20px; 
                margin-top: 50px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); 


            }
            
            .user-info{
                background-color: #0645AD; 
                color: white; 
                padding: 10px;
                margin-left: 10px; 
                border-radius: 5px;
                margin-left: 100px;
            }
            
            .submit_save{
                margin-bottom: 20px;
                background-color: #0645AD;
            }
        </style>
        <script>
            function logout() {
                window.location.href = "../logout";
            }
        </script>
    </head>


    <body>
        <div class="container">
            <img src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474111jlW/logo-truong-dai-hoc-fpt-university_043152077.png" alt="Logo_FPT" style="width:420px; height: 100px;">
            <h1 class="title">Lecturer's attendance</h1><br/>
            <a href="timetable?id=${param.id}"><span class="user-info" style="font-size: 15px">Back</span></a>
            <div style="width: 250px; display: flex; ">
                <c:forEach items="${requestScope.lessons}" var="less">
                    <c:if test="${param.id eq less.leID}">
                        <div style="background-color: green; color: white; padding: 5px; margin-right: 10px; border-radius: 5px ">
                            ${less.lecturer.lID} <!-- Hiển thị tên nhóm -->
                        </div>
                        <div style="border-left: 1px solid black; margin-right: 10px;"></div>
                        <input style="background-color: green; color: white; border-radius: 5px;padding: 5px;"  type="button" value="Log out" onclick="logout()">
                    </c:if>
                </c:forEach>

            </div>
        </div>

        <form action="att" method="POST">
            <input type="hidden" name="id" value="${param.id}"/>
            <table border="1px">
                <tr class="table_header">
                    <td>NO</td> 
                    <td>CODE</td>
                    <td>NAME</td>
                    <td>IMAGE</td>
                    <td>STATUS</td>
                    <td>COMMENT</td>
                    <td>RECORD TIME</td>
                   

                </tr>
                <c:set var="count" value="1" scope="page"/><!-- Khởi tạo biến đếm -->
                <c:forEach items="${requestScope.atts}" var="a">

                    <tr>
                        <!-- NO -->
                        <td >
                            ${count}
                        </td>
                        <!-- GROUP -->
                        <c:forEach items="${requestScope.lessons}" var="less">
                            <c:if test="${param.id eq less.leID}">
                                <td>${less.group.gName}</td> <!-- Hiển thị tên nhóm -->
                            </c:if>
                        </c:forEach>

                        <!-- CODE -->
                        <td>${a.student.id}</td>
                        <!-- NAME -->
                        <td>${a.student.name}</td>
                        <!-- IMAGE -->   
                        <td>                            
                            <img src="../img/${a.student.id}.jpg" width="140" height="180" alt="${a.student.id}"/>
                        </td>
                        <!-- STATUS -->
                        <td>
                            <input 
                                ${!a.present?"checked=\"checked\"":""}
                                type="radio" value="no" name="present${a.student.id}" /> <p style="color:red">Absent</p>
                            <input type="radio"
                                   ${a.present?"checked=\"checked\"":""}
                                   value="yes" name="present${a.student.id}" style="color: green"/> <p style="color:green">Attendent</p>
                        </td>
                        <!--COMMENT-->
                        <td>
                            <input name="description${a.student.id}" type="text" value="${a.description}"/>
                        </td>
                        <!--TAKER-->
                        <c:forEach items="${requestScope.lessons}" var="less">
                            <c:if test="${param.id eq less.leID}">

                                <td>${less.lecturer.lID}</td> <!-- Hiển thị mã giáo viên -->
                            </c:if>
                        </c:forEach>
                        <!--RECORD TIME-->
                        <td>${a.time}</td>
                    </tr>  
                    <c:set var="count" value="${count + 1}" scope="page"/> <!-- Tăng biến đếm sau mỗi lần lặp -->
                </c:forEach>
            </table>
            <input class="submit_save" style="width: 100%; color: white; background-color: darkorange; padding: 10px; font-size: 20px" type="submit" value="Save"/>              
        </form>
        <div style="font-size: 12px"><span style="font-weight: bold">Mọi góp ý, thắc mắc xin liên hệ:</span>
            <span> Phòng dịch vụ sinh viên: Email:</span>
            <a href=""><span>dichvusinhvien@fe.edu.vn.</span></a>
            <span >Điện thoại:</span>
            <span style="font-weight: bold">(024)7308.13.13</span>
            <div class="last">© Powered by <span style="color: #0C4DA2">FPT University |  CMS |  library |  books24x7</span></div>
        </div>
    </body>
</html>
