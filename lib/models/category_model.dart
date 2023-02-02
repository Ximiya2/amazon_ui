import 'package:amazon/models/product_model.dart';

class CategoryModel{

  List<ProductModel> products;
  String categoryName;


  CategoryModel({required this.products, required this.categoryName});
}
