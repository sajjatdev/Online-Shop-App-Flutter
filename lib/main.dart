import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/Services/product_services.dart';
import 'package:shop/config/AppRoute.dart';
import 'package:shop/logic/bloc/product_bloc.dart';

import 'view/HomeScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => ProductBloc(product_servicess: Product_Services())..add(AppStart()),
      child:  MaterialApp(
        title: "Shop app",
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
        onGenerateRoute: AppRouter.onGenerateRoute,
        home: HomePage(),
      ),
    );
  }
}
