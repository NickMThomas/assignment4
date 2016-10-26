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
        String url = "/New_customer.jsp";

        String action = request.getParameter("action");
        if (action == null){
            action = "userExists";
        }
        if (action.equals("userExists")){
            url = "/index.html"; 
            getServletContext().getRequestDispatcher(url)
                    .forward(request, response);
        }
        else if (action.equals("New_customer")){
            String firstName = request.getParameter("FirstName");
            String lastName = request.getParameter("LastName");
            String phone = request.getParameter("Phone");
            String address = request.getParameter("Address");
            String city = request.getParameter("City");
            String state = request.getParameter("State");
            String zip = request.getParameter("ZipCode");
            String email = request.getParameter("Email");
            
            String message = "";
            if (firstName == "" || lastName == "" || phone == "" || 
                    address == "" || city == "" || state == "" || 
                    zip == "" || email == ""){
                message = "Please complete all form feilds.";
                url = "/New_customer.jsp";
                
            }
            else{
                url = "/Success.jsp";
                
            }
            request.setAttribute("message", message);
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("city", city);
            request.setAttribute("state", state);
            request.setAttribute("zipCode", zip);
            request.setAttribute("email", email);
            
            
        }         
        getServletContext().getRequestDispatcher(url)
                    .forward(request, response); 
    }    
}
