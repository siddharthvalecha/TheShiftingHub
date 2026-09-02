package com.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/VerifyOTPServlet")
public class VerifyOTPServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String enteredOTP = request.getParameter("otp");

        HttpSession session = request.getSession();

        String sessionOTP =
                (String) session.getAttribute("resetOTP");

        if (sessionOTP != null &&
            sessionOTP.equals(enteredOTP)) {

            session.setAttribute("otpVerified", true);

            response.sendRedirect("resetPassword.jsp");

        } else {

            response.sendRedirect(
                    "forgotPassword.jsp?otpSent=true&msg=invalid"
            );
        }
    }
}