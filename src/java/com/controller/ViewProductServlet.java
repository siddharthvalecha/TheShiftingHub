package com.controller;

import com.dao.ProductDAO;
import com.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/ViewProductServlet")
public class ViewProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();

        ArrayList<Product> products = dao.getAllProducts();

        request.setAttribute("products", products);

        request.getRequestDispatcher("productlist.jsp")
               .forward(request, response);
    }
}