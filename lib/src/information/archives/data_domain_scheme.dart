

const ABSTRACT_NAVIGATOR_SERVICE_SCHEME  = '''
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
''';

const ABSTRACT_API_SCHEME = '''
// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'package:dio/dio.dart';

abstract class Api {
  const Api(this.dio);
  final Dio dio;
}
''';


const ABSTRACT_NETWORK_INFO_SCHEME = '''
// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'package:connectivity/connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  final Connectivity connectivity;

  NetworkInfo(this.connectivity);
}
''';

const ENUM_VALUES_SCHEME  = '''
// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

class EnumValues<T> {
  late Map<String, T> map;
  Map<T, String>? _reserseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (_reserseMap == null) {
      _reserseMap = map.map((k, v) => MapEntry(v, k));
    }
    return _reserseMap;
  }
}
''';




