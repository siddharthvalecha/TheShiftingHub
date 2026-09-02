package com.controller;

import com.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        HttpSession session = request.getSession();

        String email = (String) session.getAttribute("resetEmail");

        Boolean otpVerified =
                (Boolean) session.getAttribute("otpVerified");


        // Check OTP verification
        if (otpVerified == null || !otpVerified || email == null) {

            response.sendRedirect("forgotPassword.jsp");
            return;
        }


        // Check passwords
        if (!newPassword.equals(confirmPassword)) {

            response.sendRedirect("resetPassword.jsp?msg=mismatch");
            return;
        }


        UserDAO dao = new UserDAO();

        boolean status = dao.resetPassword(email, newPassword);


        if (status) {

            // Remove reset information from session
            session.removeAttribute("resetEmail");
            session.removeAttribute("resetOTP");
            session.removeAttribute("otpVerified");

            response.sendRedirect("login.jsp?msg=passwordreset");

        } else {

            response.sendRedirect("resetPassword.jsp?msg=failed");
        }
    }
}