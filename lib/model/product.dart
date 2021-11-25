import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String img;
  final double price;

  Product({required this.name, required this.img, required this.price});

  static Product fromproductdata(DocumentSnapshot snap) {
    Product product =
        Product(img: snap['img'], name: snap['name'], price: snap['price']);
    return product;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, img, price];
}
