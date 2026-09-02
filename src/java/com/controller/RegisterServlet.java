package com.controller;

import com.dao.UserDAO;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        User user = new User();

        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setFullname(request.getParameter("fullname"));
        user.setAddress(request.getParameter("address"));
        user.setContact(request.getParameter("contact"));
        user.setEmail(request.getParameter("email"));
        user.setDob(request.getParameter("dob"));
        user.setGender(request.getParameter("gender"));
        user.setCity(request.getParameter("city"));
        user.setNationality(request.getParameter("nationality"));

        UserDAO dao = new UserDAO();

        if (dao.isUsernameExists(user.getUsername())) {

    response.sendRedirect("login.jsp?msg=usernameexists");
    return;

}

if (dao.isEmailExists(user.getEmail())) {

    response.sendRedirect("login.jsp?msg=emailexists");
    return;

}    
        
        boolean status = dao.registerUser(user);

       if (status) {

    response.sendRedirect("login.jsp?msg=registered");

} else {

    response.sendRedirect("login.jsp?msg=failed");

}
    }

}
