import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

class WishlistProvider with ChangeNotifier {

  late List<ProductModel> _wishlist = [];

  List<ProductModel> get wishlist => _wishlist;

  set wishlist(List<ProductModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(ProductModel product) {

    if(!isWishlist(product)){
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();

  }


  /* Mengecek apakah produck sudah ada dalam wishlist atau belum. */
  isWishlist(ProductModel product) {
    if(_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }

}