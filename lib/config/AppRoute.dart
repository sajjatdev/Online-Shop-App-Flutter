import 'package:flutter/material.dart';
import 'package:shop/view/screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('this is Route:- ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case HomePage.routeName:
        return HomePage.route(); 
      default:
        return errorRoute();
    }
  }

  static Route errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
            ));
  }
}
