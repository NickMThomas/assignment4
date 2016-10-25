/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.newcustomer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NewCustomerServlet", urlPatterns = {"/New_customer"})
public class NewCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        String url = "/New_customer.html";

        String action = request.getParameter("action");
        if (action == null){
            action = "userExists";
        }
        if (action.equals("userExists")){
            url = "/index.html";            
        }
        else if (action.equals("join")){
            String firstName = request.getParameter("FirstName");
            String lastName = request.getParameter("FirstName");
            String phone = request.getParameter("Phone");
            String address = request.getParameter("Address");
            String city = request.getParameter("City");
            String state = request.getParameter("State");
            String zip = request.getParameter("ZIPCode");
            String email = request.getParameter("Email");
            
            String message;
            if (firstName == null || lastName == null || phone == null || 
                    address == null || city == null || state == null || 
                    zip == null || email == null){
                message = "Please complete all form feilds.";
                url = "/New_customer";
            }
            else{
                url = "/Success.html";
            }
            
        }         
        getServletContext().getRequestDispatcher(url)
                    .forward(request, response);
    }    
}
