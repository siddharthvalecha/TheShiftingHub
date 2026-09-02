package com.controller;

import com.dao.PaymentDAO;
import com.dao.ProductDAO;
import com.model.Payment;
import com.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Get Product ID
        int productId = Integer.parseInt(request.getParameter("id"));

        // Fetch Product
        ProductDAO dao = new ProductDAO();

        Product product = dao.getProductById(productId);

        // Send Product to JSP
        request.setAttribute("product", product);

        // Open payment page
        request.getRequestDispatcher("payment.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Payment payment = new Payment();

        payment.setProductId(Integer.parseInt(request.getParameter("productId")));
        payment.setCustomerName(request.getParameter("customerName"));
        payment.setPhone(request.getParameter("phone"));
        payment.setAddress(request.getParameter("address"));
        payment.setCity(request.getParameter("city"));
        payment.setPincode(request.getParameter("pincode"));
        payment.setPaymentMethod(request.getParameter("paymentMethod"));
        payment.setAmount(Integer.parseInt(request.getParameter("amount")));

        PaymentDAO dao = new PaymentDAO();

        boolean status = dao.savePayment(payment);

        if (status) {

            response.sendRedirect("paymentSuccess.jsp");

        } else {

            response.sendRedirect("payment.jsp?msg=failed");

        }

    }

}