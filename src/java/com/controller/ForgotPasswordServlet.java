package com.controller;

import com.dao.UserDAO;
import com.util.EmailUtility;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Random;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        UserDAO dao = new UserDAO();

        if (dao.isEmailExists(email)) {

            Random random = new Random();

            String otp = String.valueOf(
                    100000 + random.nextInt(900000)
            );

            boolean sent = EmailUtility.sendOTP(email, otp);

            if (sent) {

                HttpSession session = request.getSession();

                session.setAttribute("resetEmail", email);
                session.setAttribute("resetOTP", otp);

                response.sendRedirect("forgotPassword.jsp?otpSent=true");

            } else {

                response.sendRedirect(
                        "forgotPassword.jsp?msg=sendfailed"
                );
            }

        } else {

            response.sendRedirect(
                    "forgotPassword.jsp?msg=notfound"
            );
        }
    }
}