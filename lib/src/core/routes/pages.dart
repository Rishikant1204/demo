library route_pages;

import 'package:demo/src/features/loginpage/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import '/src/core/error/error.dart';
import '/src/core/animation/animation.dart';
import 'routes.dart';

class AppRoute {
  static const initial = RoutesName.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
        return MaterialPageRoute(builder: (context) => const LoginpagePage());

      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }
}
