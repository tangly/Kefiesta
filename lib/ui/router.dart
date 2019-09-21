import 'package:kefiesta/core/constants/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:kefiesta/ui/views/dumb_view.dart';
import 'package:kefiesta/ui/views/home_view.dart';
import 'package:kefiesta/ui/views/splash_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.Splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case RoutePaths.Dumb:
        return MaterialPageRoute(builder: (_) => DumbView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
