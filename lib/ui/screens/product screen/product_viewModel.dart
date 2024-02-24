import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:xgrid_task25/core/model/productModel.dart';

class ProductViewModel extends ChangeNotifier {
  List<Products>? products = [];
  ProductViewModel() {
    readProduct();
  }

  Future<void> readProduct() async {
    final String response = await rootBundle.loadString('assets/product.json');
    final data = await json.decode(response);
    print('Data ==== $data');
    products = data["products"];

    print(data["products"]);
    notifyListeners();
  }
}
