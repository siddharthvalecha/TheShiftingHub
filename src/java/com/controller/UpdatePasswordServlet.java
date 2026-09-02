package com.controller;

import com.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/UpdatePasswordServlet")
public class UpdatePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("uname");
        String oldPassword = request.getParameter("opwd");
        String newPassword = request.getParameter("npwd");

        UserDAO dao = new UserDAO();

        boolean status = dao.updatePassword(
                username,
                oldPassword,
                newPassword
        );

        if (status) {

            response.sendRedirect("login.jsp?msg=updated");

        } else {

            response.sendRedirect("updatePassword.jsp?msg=invalid");

        }
    }
}