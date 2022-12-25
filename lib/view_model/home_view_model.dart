import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_parallaxlogic/repo/api_status.dart';
import 'package:flutter_demo_parallaxlogic/repo/home_serviec.dart';
import '../model/product.dart';
import '../model/users_error.dart';

class HomeViewModel extends ChangeNotifier {
  List<ProductModel> _productList = [];
  ServiceError? _productError;
  bool _loading = false;
  bool get loading => _loading;
  ServiceError? get productError => _productError;
  List<ProductModel>? get productList => _productList;

  setLoding(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  setFeaturedProduct(List<ProductModel> list) {
    _productList = list;
  }

  setProductError(ServiceError userError) {
    _productError = userError;
  }

  HomeViewModel() {
    getProduct();
  }

  getProduct() async {
    setLoding(true);
    var response = await HomeServices.getProduct();
    if (response is Success) {
      setFeaturedProduct(response.responce as List<ProductModel>);
    }
    if (response is Failure) {
      ServiceError productError =
          ServiceError(code: response.code, message: response.errorResponce);
      setProductError(productError);
    }
    setLoding(false);
  }
}
