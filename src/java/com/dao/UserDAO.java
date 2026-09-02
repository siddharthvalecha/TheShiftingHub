package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DBConnection;
import com.model.User;
import java.sql.ResultSet;

public class UserDAO {

    public boolean registerUser(User user) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO usertable1(username,password,fullname,address,contact,email,dob,gender,city,nationality) VALUES(?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFullname());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getContact());
            ps.setString(6, user.getEmail());
            ps.setString(7, user.getDob());
            ps.setString(8, user.getGender());
            ps.setString(9, user.getCity());
            ps.setString(10, user.getNationality());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

            ps.close();
            con.close();

        }

          catch (Exception e) {

    System.out.println("Registration Error:");
    e.printStackTrace();



        }

        return status;
    }
    
    public User loginUser(String username, String password) {

    User user = null;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM usertable1 WHERE username=? AND password=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            user = new User();

            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setFullname(rs.getString("fullname"));
            user.setAddress(rs.getString("address"));
            user.setContact(rs.getString("contact"));
            user.setEmail(rs.getString("email"));
            user.setDob(rs.getString("dob"));
            user.setGender(rs.getString("gender"));
            user.setCity(rs.getString("city"));
            user.setNationality(rs.getString("nationality"));

        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return user;

}
public boolean isUsernameExists(String username) {

    boolean exists = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM usertable1 WHERE username=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, username);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            exists = true;
        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return exists;

}
public boolean isEmailExists(String email) {

    boolean exists = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM usertable1 WHERE email=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, email);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            exists = true;
        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return exists;

}
public boolean updatePassword(String username, String oldPassword, String newPassword) {

    boolean status = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM usertable1 WHERE username=? AND password=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, username);
        ps.setString(2, oldPassword);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            String updateSql = "UPDATE usertable1 SET password=? WHERE username=?";

            PreparedStatement ps1 = con.prepareStatement(updateSql);

            ps1.setString(1, newPassword);
            ps1.setString(2, username);

            int row = ps1.executeUpdate();

            if (row > 0) {
                status = true;
            }

            ps1.close();
        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return status;
}
public boolean resetPassword(String email, String newPassword) {

    boolean status = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "UPDATE usertable1 SET password=? WHERE email=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, newPassword);
        ps.setString(2, email);

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