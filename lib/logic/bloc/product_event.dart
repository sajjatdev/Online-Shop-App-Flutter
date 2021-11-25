part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}
class AppStart extends ProductEvent{

}

class UpdateProduct extends ProductEvent{
  final List<Product> getAllProduct;

  UpdateProduct({this.getAllProduct=const <Product>[]});
}

