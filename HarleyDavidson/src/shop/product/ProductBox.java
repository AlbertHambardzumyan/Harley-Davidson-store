package shop.product;

import shop.database.DbController;

import java.util.List;

public class ProductBox {

    private static List<Product> productItems;

    static {
        productItems = DbController.getInstance().getProducts();
    }

    static List<Product> getProductItems() {
        return productItems;
    }

    public static Product getProductItem(String productItemID) {
        if (productItemID == null) {
            return (null);
        }
        for (Product productItem : productItems) {
            if (productItemID.equals(productItem.getId())) {
                return (productItem);
            }
        }
        return (null);
    }
}
