/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import toba.business.User;

/**
 *
 * @author Nick
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

         
    String userName = request.getParameter("userName");  
    String password = request.getParameter("password");  
    
    HttpSession session = request.getSession();
    User user = (User) session.getAttribute("user");
    
    String var1 = user.getPassword();
    String var2 = user.getUserName();
    
    if(userName.equals(var2) && password.equals(var1)){  
        String url = "/Account_activity.jsp";
        getServletContext().getRequestDispatcher(url)
            .forward(request,response);
    }  
    else if (userName.equals("") && password.equals("")){          
        String url = "/New_customers.jsp";
        getServletContext().getRequestDispatcher(url)
            .forward(request,response);
    }    
    else{          
        String url = "/Login_failure.jsp";
        getServletContext().getRequestDispatcher(url)
            .forward(request,response);
    }    
        
    }  
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }    
}

