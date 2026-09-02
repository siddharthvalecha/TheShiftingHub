package model;

public class Product {
    private String productName;
    private String description;
    private double price;
    private String productImagePath;
    private String billImagePath;
    private String dateOfPurchase;

    // Constructor
    public Product(String productName, String description, double price,
                   String productImagePath, String billImagePath, String dateOfPurchase) {
        this.productName = productName;
        this.description = description;
        this.price = price;
        this.productImagePath = productImagePath;
        this.billImagePath = billImagePath;
        this.dateOfPurchase = dateOfPurchase;
    }

    // Getters
    public String getProductName() { return productName; }
    public String getDescription() { return description; }
    public double getPrice() { return price; }
    public String getProductImagePath() { return productImagePath; }
    public String getBillImagePath() { return billImagePath; }
    public String getDateOfPurchase() { return dateOfPurchase; }
}
