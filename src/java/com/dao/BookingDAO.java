package com.dao;

import db.DBConnection;
import com.model.Booking;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookingDAO {

    public boolean addBooking(Booking booking) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO bookingtable(fullname,email,contact,pickup_address,drop_address,moving_date,moving_time,vehicle_type,house_type,instructions,booking_status) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, booking.getFullName());
            ps.setString(2, booking.getEmail());
            ps.setString(3, booking.getContact());
            ps.setString(4, booking.getPickupAddress());
            ps.setString(5, booking.getDropAddress());
            ps.setString(6, booking.getMovingDate());
            ps.setString(7, booking.getMovingTime());
            ps.setString(8, booking.getVehicleType());
            ps.setString(9, booking.getHouseType());
            ps.setString(10, booking.getInstructions());
            ps.setString(11, "Pending");

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}