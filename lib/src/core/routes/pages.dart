library route_pages;


import 'package:demo/src/features/splash/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import '/src/core/error/error.dart';
// import '/src/core/animation/animation.dar;
import 'routes.dart';

class AppRoute {
  static const initial = RoutesName.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
        // return const PageFadeTransition(child: HomePage()).build;
        return MaterialPageRoute(builder: (context) => const SplashPage());

      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }
}
