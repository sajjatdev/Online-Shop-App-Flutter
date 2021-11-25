part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
  
  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}


class Loading extends ProductState{

}

class LoadedProduct extends ProductState{
  final List<Product> productList;

  LoadedProduct({this.productList=const <Product>[]});
}
