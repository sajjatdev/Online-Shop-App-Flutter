import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop/Services/product_services.dart';
import 'package:shop/model/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final Product_Services _product_services;
  StreamSubscription? productsub;
  ProductBloc({required Product_Services product_servicess})
      : _product_services = product_servicess,
        super(ProductInitial()) {
    on<AppStart>((event, emit) {
      // TODO: implement event handler
      productsub?.cancel();

      try {
        productsub = _product_services.getAllProduct().listen((productlist) {
          add(UpdateProduct(getAllProduct: productlist));
        });
      } catch (_) {}
    });

    on<UpdateProduct>((event, emit) {
      emit(LoadedProduct(productList: event.getAllProduct));
    });
  }
}
