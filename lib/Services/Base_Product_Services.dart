import 'package:shop/model/product.dart';

abstract class Base_Produt{
  Stream<List<Product>> getAllProduct();
}