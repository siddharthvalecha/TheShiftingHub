package com.controller;

import com.dao.UserDAO;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        User user = dao.loginUser(username, password);

        if (user != null) {

            HttpSession session = request.getSession();

            session.setAttribute("username", user.getUsername());
            session.setAttribute("fullname", user.getFullname());
            session.setAttribute("email", user.getEmail());
            session.setAttribute("contact", user.getContact());

            response.sendRedirect("loginpage.jsp");

        } else {

            response.sendRedirect("login.jsp?msg=invalid");

        }

    }

}