import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/Services/Base_Product_Services.dart';
import 'package:shop/model/product.dart';

class Product_Services extends Base_Produt {
  final FirebaseFirestore _firebaseFirestore;

  Product_Services({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Product>> getAllProduct() {
    // TODO: implement getAllProduct
    return _firebaseFirestore.collection("product").snapshots().map((snapshots) {
      return snapshots.docs.map((product) => Product.fromproductdata(product)).toList();
    });
  }
}
