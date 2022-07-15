// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'package:flutter/material.dart';

abstract class NavigationService {
  final GlobalKey<NavigatorState> navigator;

  GlobalKey<ScaffoldState> get scaffoldState => GlobalKey<ScaffoldState>();

  NavigationService(this.navigator);

  Future<dynamic> navigateToPushNamed(String routeName, {Object? arguments});

  Future<dynamic> replaceRouteName(String routeName, {Object? arguments});

  Future<dynamic> navigateToPushNamedAndRemoveUntil(String routeName);

  Future<dynamic> navigateToPop({Object? object});

  Future<dynamic> navigatePush({required Widget page});
}
