package com.dao;

import db.DBConnection;
import com.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {

    public boolean addProduct(Product product) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO producttable(fullname,prodname,description,price,dop,sellingprice,image) VALUES(?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, product.getFullName());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getDescription());
            ps.setInt(4, product.getOriginalPrice());
            ps.setString(5, product.getPurchaseDate());
            ps.setInt(6, product.getSellingPrice());
            ps.setString(7, product.getImage());

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
    
    public ArrayList<Product> getAllProducts() {

    ArrayList<Product> list = new ArrayList<>();

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM producttable ORDER BY product_id DESC";

        PreparedStatement ps = con.prepareStatement(sql);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {

            Product product = new Product();

            product.setProductId(rs.getInt("product_id"));
            product.setFullName(rs.getString("fullname"));
            product.setProductName(rs.getString("prodname"));
            product.setDescription(rs.getString("description"));
            product.setOriginalPrice(rs.getInt("price"));
            product.setPurchaseDate(rs.getString("dop"));
            product.setSellingPrice(rs.getInt("sellingprice"));
            product.setImage(rs.getString("image"));

            list.add(product);

        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return list;
}
    public Product getProductById(int productId) {

    Product product = null;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM producttable WHERE product_id = ?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, productId);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            product = new Product();

            product.setProductId(rs.getInt("product_id"));
            product.setFullName(rs.getString("fullname"));
            product.setProductName(rs.getString("prodname"));
            product.setDescription(rs.getString("description"));
            product.setOriginalPrice(rs.getInt("price"));
            product.setPurchaseDate(rs.getString("dop"));
            product.setSellingPrice(rs.getInt("sellingprice"));
            product.setImage(rs.getString("image"));

        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return product;
}

}   