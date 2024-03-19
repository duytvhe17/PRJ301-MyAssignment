<%-- 
    Document   : timetable
    Created on : Feb 28, 2024, 8:53:28 AM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Timetable</title>
    <div class="logo-fpt"></div>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top:  20px;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 4px;
            text-align: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }

        
        th {
    background-color: burlywood; 
}

        input[type="date"] {
            padding: 6px;
        }

        input[type="submit"] {
            background-color: #4CAF50; 
            color: white; 
            padding: 10px;
            margin-left: 10px; 
            border-radius: 5px;
            border-bottom: 1px white;
            cursor: pointer;
            border-bottom: 1px white;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #0645AD;
        }

        a:hover {
            text-decoration: underline;
        }
       
        
         .user-info {
                background-color: #0C4DA2; 
                color: red; 
                padding: 10px;
                margin-left: 10px; 
                border-radius: 5px;
                border-bottom: 1px white;
                margin-left: 450px;
                flex-shrink: 0;

            }
            
            .diachi{
                background-color: #0645AD; /* Green background */
                color: white; /* White text color */
                padding: 10px;
                margin-left: 10px; /* Space between elements */
                border-radius: 5px;
                border-bottom: 1px white;
                margin-left: 10px;
                flex-shrink: 0;
            
                .note{
                    margin-top: 0;
                   
                }
                
                .title_lecturer {
                display: flex;
                justify-content: space-between
            }
            
            /* Tùy chỉnh bảng chọn */
#mySelect {
  padding: 8px 20px; 
  font-size: 16px; 
  border: 1px solid #ccc; 
  border-radius: 4px; 
  background-color: #ccc; 
}


#mySelect option {
  padding: 8px; 
  font-size: 16px; 
  background-color: #fff; 
  color: #000; 
}


#mySelect option:hover {
  background-color: #ddd;
}

            }
        
    </style>
</head>
<body>
    <div class="img_header">
        <img src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474111jlW/logo-truong-dai-hoc-fpt-university_043152077.png" alt="Logo_FPT" style="width:350px; height: 80px;">
        <img src="https://fap.fptacademy.vn/images/app-store.svg" alt="app_store" style="width:100px; height: 40px;">
        <img src="https://fap.fptacademy.vn/images/play-store.svg" alt="play_store" style="width:100px; height: 40px;">
    </div>
        <p class="title_lecturer"><h1 >Lecturer</h1> ${sessionScope.username}</p>
    <div class="note">
        <div ><span style="font-weight: bold">Note:</span> These activities do not include extra-curriculum activities, such as club activities ...</div><br/>
        <div ><span style="font-weight: bold">Chú thích:</span> Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt động câu lạc bộ ...</div><br/>
            <div><h5>Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...</h5></div>
            <div><h5>Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,...</h5></div>
            <div><h5>Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...</h5></div>
            <div><h5>Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.</h5></div>
            <div><h5>Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..</h5></div>
            <div><h5>Little UK (LUK) thuộc tầng 5 tòa nhà Delta</h5></div><br/>
        </div>
<div class="select">
    <label for="mySelect">Lecturer:</label>
<select  id="mySelect" >
  <option value="option1">Ngô Tùng Sơn</option>
  <option value="option2">Nguyễn Thị Thu Thủy</option>
  <option value="option3">Nguyễn Văn Thiện</option>
</select>
</div>
    <form action="timetable" method="GET">
        <input type="hidden" name="id" value="${param.id}"/>
        From-To: <input type="date" value="${requestScope.from}" name="from" style="font-size: 15px"/> - <input value="${requestScope.to}" type="date" name="to"/> 
        <input type="submit" value="Show"/>
        <a href="../logout"><span class="user-info" style="font-size: 15px">Logout</span></a>
        <a class="diachi" style="font-size: 15px"> CAMPUS: FPTU-Hòa Lạc</a>
    </form>
    <table>
        <tr>
            <th>Period</th>
            <c:forEach items="${requestScope.dates}" var="d">
                <th>${d}</th>
            </c:forEach>
        </tr>
        
        <c:forEach items="${requestScope.slots}" var="slot">
            <tr>
                <td>${slot.name}</td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>
                        
                        <c:forEach items="${requestScope.lessions}" var="les">
                            
                            <c:if test="${d eq les.date and les.slot.id eq slot.id}">
                                ${les.group.name} - ${les.group.subject.name}
                                <a href="att?id=${les.id}"> 
                                    <c:if test="${les.attended}">
                                        Edit
                                    </c:if>
                                    <c:if test="${!les.attended}">
                                        Take
                                    </c:if>     
                                </a>
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>  
        </c:forEach>
    </table>    
        <div style="font-size: 12px"><span style="font-weight: bold">Mọi góp ý, thắc mắc xin liên hệ:</span>
            <span> Phòng dịch vụ sinh viên: Email:</span>
            <a href=""><span>dichvusinhvien@fe.edu.vn.</span></a>
            <span >Điện thoại:</span>
            <span style="font-weight: bold">(024)7308.13.13</span>
            <div class="last">© Powered by <span style="color: #0C4DA2">FPT University |  CMS |  library |  books24x7</span></div>
        </div>
</body>
</html