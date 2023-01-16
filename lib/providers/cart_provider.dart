import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/models/product_model.dart';

import '../models/cart_model.dart';

class CartProvider with ChangeNotifier {

  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }


  /* Add Cart Function */
  addCart(ProductModel product) {

    if(productExist(product)) {
      int index = _carts.indexWhere((element) => element.product!.id == product.id);
      _carts[index].quantity !+ 1;
    } else {
      _carts.add(CartModel(
        id: _carts.length,
        product: product,
        quantity: 1,
      ),
      );
    }

    notifyListeners();
  }


  /* Remove Cart */
  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  /* Add Quantity */
  addQuantity(int id) {
    _carts[id].quantity !+ 1;
    notifyListeners();
  }

  /* Reduce Quantity */
  reduceQuantity(int id) {
    _carts[id].quantity !- 1;
    if(_carts[id].quantity == 0) {
      _carts.removeAt(id);
    }
    notifyListeners();
  }


  /* Get Total Items */
  totalItems() {
    int total = 0;
    for(var item in _carts) {
      total += item.quantity!;
    }

    return total;
  }


  /* Get Total Price */
  totalPrice() {
    double total = 0;
    for(var item in _carts) {
      total += (item.quantity! * item.product!.price!);
    }

    return total;
  }


  /* Function to check if product exist. */
  productExist(ProductModel product) {

    if(_carts.indexWhere((element) => element.product!.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }

  }

}