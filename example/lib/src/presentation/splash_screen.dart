// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:example/src/injection/injection.dart';
import 'package:example/src/domain/core/navigator/navigation_service.dart';
import 'package:example/src/presentation/empty_screen.dart';
import 'package:example/src/utils/color_util.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _navigator = inject<NavigationService>();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 2), () async {
      _navigator.navigateToPushNamedAndRemoveUntil(EmptyScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(systemNavigationBarColor: kBackgroundColor),
        child: Container(
          color: kBackgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'LOGO',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
