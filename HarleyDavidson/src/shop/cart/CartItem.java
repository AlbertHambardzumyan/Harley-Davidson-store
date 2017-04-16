package shop.cart;

import shop.product.Product;

import java.io.Serializable;
import java.text.DecimalFormat;


public class CartItem implements Serializable{
    private Product productItem;
    private int numItems;

    public CartItem(Product productItem) {
        setProduct(productItem);
        setProductNum(1);
    }

    public Product getProduct() {
        return (productItem);
    }

    protected void setProduct(Product productItem) {
        this.productItem = productItem;
    }

    public String getProductID() {
        return (getProduct().getId());
    }

    public String getProductName() {
        return (getProduct().getName());
    }

    public double getProductUnitCost() {
        return (getProduct().getPrice());
    }

    public int getProductNum() {
        return (numItems);
    }

    public void setProductNum(int n) {
        this.numItems = n;
    }

    public void incrementProductNumItems() {
        setProductNum(getProductNum() + 1);
    }

    public double getTotalCost() {
        return (getProductNum() * getProductUnitCost());
    }
}