import 'package:furry_care/core/view_model/base_view_model.dart';

class ProductCheckoutViewModel extends BaseViewModel {
  String? selectedPaymentMethod;

  onClick(value) {
    selectedPaymentMethod = value;
    notifyListeners();
  }
}
