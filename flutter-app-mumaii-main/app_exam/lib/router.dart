import 'package:app_exam/screen/regis.dart';
import 'package:app_exam/screen/login.dart';
//import 'package:app_exam/screen/Home.dart';
import 'package:flutter/material.dart';

class RouterScreen {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
            settings: const RouteSettings(name: '/login'),
            builder: (_) => const LoginPage());
      case '/Regis':
        return MaterialPageRoute(
            settings: const RouteSettings(name: '/regis'),
            builder: (_) => const RegisPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

class AppRoutes {
  static const String homePagePage = '/home_page_page';

  static Map<String, WidgetBuilder> routes = {};
}
