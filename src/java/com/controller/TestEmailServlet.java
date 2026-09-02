package com.controller;


import com.util.EmailUtility;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/TestEmailServlet")
public class TestEmailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String otp = "123456";

        boolean status = EmailUtility.sendOTP(
                "siddharthvalecha319b@gmail.com",
                otp
        );

        response.setContentType("text/html");

        if (status) {

            response.getWriter().println(
                    "<h2>Email sent successfully!</h2>"
            );

        } else {

            response.getWriter().println(
                    "<h2>Email sending failed!</h2>"
            );
        }
    }
}