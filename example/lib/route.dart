// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart
 
import 'package:flutter/material.dart';
import 'package:example/src/presentation/empty_screen.dart';
import 'package:example/src/presentation/splash_screen.dart';

class AnimationRouterPager extends MaterialPageRoute {
  WidgetBuilder builder;

  AnimationRouterPager({required this.builder}) : super(builder: builder);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return AnimationRouterPager(builder: (_) => SplashScreen());
      case EmptyScreen.route:
        return AnimationRouterPager(builder: (_) => EmptyScreen());
      default:
        return AnimationRouterPager(builder: (_) => SplashScreen());
    }
  }
}

