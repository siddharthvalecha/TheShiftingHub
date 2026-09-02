package com.controller;

import com.dao.ProductDAO;
import com.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet("/UploadProductServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,
    maxFileSize = 5 * 1024 * 1024,
    maxRequestSize = 10 * 1024 * 1024
)
public class UploadProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Read Form Data
        String fullname = request.getParameter("fname");
        String productName = request.getParameter("pname");
        String description = request.getParameter("descr");
        int price = Integer.parseInt(request.getParameter("price"));
        String dop = request.getParameter("dop");
        int sellingPrice = Integer.parseInt(request.getParameter("eprice"));

        // Read Image
        Part imagePart = request.getPart("image");

        String originalFileName = Paths.get(imagePart.getSubmittedFileName())
                                       .getFileName()
                                       .toString();

        // Generate unique filename
        String fileName = System.currentTimeMillis() + "_" + originalFileName;

        // Upload folder
        String uploadPath = getServletContext().getRealPath("/uploads");

System.out.println("Upload Path: " + uploadPath);

File folder = new File(uploadPath);

if (!folder.exists()) {
    folder.mkdirs();
}

imagePart.write(uploadPath + File.separator + fileName);
        // Path to store in DB
        String imagePath = "uploads/" + fileName;

        // Create Product Object
        Product product = new Product();

        product.setFullName(fullname);
        product.setProductName(productName);
        product.setDescription(description);
        product.setOriginalPrice(price);
        product.setPurchaseDate(dop);
        product.setSellingPrice(sellingPrice);
        product.setImage(imagePath);

        // Save using DAO
        ProductDAO dao = new ProductDAO();

        boolean status = dao.addProduct(product);

        if (status) {
            response.sendRedirect("productform.jsp?msg=success");
        } else {
            response.sendRedirect("productform.jsp?msg=failed");
        }

    }
}