/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.login;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "PasswordResetServlet", urlPatterns = {"/PasswordResetServlet"})
public class PasswordResetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        
        String url = "/Password_reset.jsp";
        
        HttpSession session = request.getSession();
        
        User user = (User) session.getAttribute("user");
        
        String action = request.getParameter("action");
        if (action == null){
            action = "Password_reset";
        }
        
        if (action.equals("Password_reset")){
            String password = request.getParameter("password");
            user.setPassword(password);
            url = "/Account_activity.jsp";
        }
         getServletContext().getRequestDispatcher(url)
                    .forward(request, response); 
    }    
}
