import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/cart_items.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class CartViewModel extends BaseViewModel {
  final List<CartItem> _cartItems = [
    CartItem(name: 'Dogs', quantity: 1, price: 10.0, imageUrl: AppAssets.Dog1),
    CartItem(name: 'Pet', quantity: 1, price: 20.0, imageUrl: AppAssets.pet),
    CartItem(name: 'Dogs', quantity: 1, price: 30.0, imageUrl: AppAssets.Dog3),
    CartItem(name: 'Pet', quantity: 1, price: 40.0, imageUrl: AppAssets.Dog2),
  ];

  List<CartItem> get cartItems => _cartItems;

  void incrementQuantity(int index) {
    _cartItems[index].quantity++;
    notifyListeners();
  }

  void decrementQuantity(int index) {
    if (_cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
      notifyListeners();
    }
  }

  void deleteItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
