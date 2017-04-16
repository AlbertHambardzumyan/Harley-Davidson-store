package shop.cart;

import shop.product.ProductBox;
import java.util.*;

public class CartBox {
    private ArrayList<CartItem> cartItems;

    public CartBox() {
        cartItems = new ArrayList<>();
    }


    public ArrayList<CartItem> getCartItems() {
        return (cartItems);
    }


    public synchronized void addItem(String itemID) {
        CartItem cartItem;
        for (CartItem cartItem1 : cartItems) {
            cartItem = cartItem1;
            if (cartItem.getProductID().equals(itemID)) {
                cartItem.incrementProductNumItems();
                return;
            }
        }
        CartItem newShoppingCartItem = new CartItem(ProductBox.getProductItem(itemID));
        cartItems.add(newShoppingCartItem);
    }
}