package com.controller;

import com.dao.BookingDAO;
import com.model.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Booking booking = new Booking();

        booking.setFullName(request.getParameter("fullname"));
        booking.setEmail(request.getParameter("email"));
        booking.setContact(request.getParameter("contact"));
        booking.setPickupAddress(request.getParameter("pickupAddress"));
        booking.setDropAddress(request.getParameter("dropAddress"));
        booking.setMovingDate(request.getParameter("movingDate"));
        booking.setMovingTime(request.getParameter("movingTime"));
        booking.setVehicleType(request.getParameter("vehicleType"));
        booking.setHouseType(request.getParameter("houseType"));
        booking.setInstructions(request.getParameter("instructions"));

        BookingDAO dao = new BookingDAO();

        boolean status = dao.addBooking(booking);

        if (status) {

            response.sendRedirect("bookingSuccess.jsp");

        } else {

            response.sendRedirect("bookingform.jsp?msg=failed");

        }

    }

}