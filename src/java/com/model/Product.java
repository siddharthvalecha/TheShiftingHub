package com.model;

public class Product {

    private int productId;
    private String fullName;
    private String productName;
    private String description;
    private int originalPrice;
    private String purchaseDate;
    private int sellingPrice;
    private String image;

    public Product() {
    }

    public Product(int productId, String fullName, String productName,
                   String description, int originalPrice,
                   String purchaseDate, int sellingPrice,
                   String image) {

        this.productId = productId;
        this.fullName = fullName;
        this.productName = productName;
        this.description = description;
        this.originalPrice = originalPrice;
        this.purchaseDate = purchaseDate;
        this.sellingPrice = sellingPrice;
        this.image = image;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(int originalPrice) {
        this.originalPrice = originalPrice;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public int getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(int sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}