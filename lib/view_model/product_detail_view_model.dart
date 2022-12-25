import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_parallaxlogic/repo/api_status.dart';
import 'package:flutter_demo_parallaxlogic/repo/product_detail_serviec.dart';
import '../model/product.dart';
import '../model/users_error.dart';

class ProductDetailViewModel extends ChangeNotifier {
  ProductModel? _product;
  ServiceError? _productError;
  bool _loading = false;

  bool get loading => _loading;

  ServiceError? get productError => _productError;

  ProductModel? get product => _product;

  setLoding(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  setProduct(ProductModel porduct) {
    _product = porduct;
  }

  setProductError(ServiceError userError) {
    _productError = userError;
  }

  ProductDetailViewModel(var id) {
    getProductDetail(id);
  }
  getProductDetail(var id) async {
    setLoding(true);
    var response = await ProductDetailServices.getProductDetail(id: id);
    if (response is Success) {
      setProduct(response.responce as ProductModel);
    }
    if (response is Failure) {
      ServiceError productError =
          ServiceError(code: response.code, message: response.errorResponce);
      setProductError(productError);
    }
    setLoding(false);
  }
}
