/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;


/**
 *
 * @author ADMIN
 */
public class algorithmClass extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet algorithmClass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet algorithmClass at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
public static boolean kiemtrasonguyento(int number){
    if(number <=1){
        return false;
    }
    for( int i = 2; i <= Math.sqrt(number); i++){
        if(number % i == 0){
            return false;
        }
    }
    return true;
}


public static boolean kiemtraxemcodusoluongkitukhong(String input, int min, int max){
    if(input == null){
        return false;
    }
    int length = input.length();
    return length >= min && length <= max;
}

public static boolean kiemtraxemdutuoichua(Date birthDate, int age){
    Calendar today = Calendar.getInstance();
    
    Calendar birthDay = Calendar.getInstance();
    birthDay.setTime(birthDate);
    birthDay.add(Calendar.YEAR, age);
    return !birthDay.after(today);
}


public static long tinhgiaithua(int number){
    long result = 1;
    for(int factor = 2; factor <= number; factor++){
        result *= factor;
    }
    return result;
}


public static int daonguocso(int number){
    int reversed = 0;
    while (number != 0){
        int lastDigit = number % 10;
        reversed = reversed * 10 + lastDigit;
        number /= 10;
        
    }
    return reversed;    
}

public static long tinhtongtu(int number){
    int sum = 0;
    for(int i = 1; i <= number; i++){
        sum += i;
        
    }
    return sum;
}

public static boolean kiemtrasole(int number){
    return number % 2 != 0;
}

public static boolean kiemtrasochan(int number){
    return number % 2 == 0;
}

public static boolean kiemtrasoPalindrom(int number){
if(number < 0){
    return false;
}
int reversed = 0;
int original = number;
while (number != 0){
    int lastDigit = number % 10;
    reversed = reversed * 10 + lastDigit;
    number /= 10;
}
return original == reversed;
}

public static int fibonacci(int n){
    if(n <= 1){
        return n;
    }
    int fib = 1;
    int prevFib = 1;
    
    for(int i = 2; i < n; ++i){
        int temp = fib;
        fib += prevFib;
        prevFib = temp;
    }
    return fib;
}

public static boolean kiemtranamnhuan(int year){
    return (year %4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

public int timbcnn(int a, int b){
    int start;
    if(a>b){
        start = a;
        
    }else{
        start = b;
        
    }
    while(start % a != 0 || start % b != 0){
        start ++;
    }
    return start;
}
}
