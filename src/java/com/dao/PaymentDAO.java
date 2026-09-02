package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DBConnection;
import com.model.Payment;

public class PaymentDAO {

    public boolean savePayment(Payment payment) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO payment(product_id, customer_name, phone, address, city, pincode, payment_method, amount) VALUES(?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, payment.getProductId());
            ps.setString(2, payment.getCustomerName());
            ps.setString(3, payment.getPhone());
            ps.setString(4, payment.getAddress());
            ps.setString(5, payment.getCity());
            ps.setString(6, payment.getPincode());
            ps.setString(7, payment.getPaymentMethod());
            ps.setInt(8, payment.getAmount());

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