// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'package:example/src/domain/core/network/network_info.dart';
import 'package:connectivity/connectivity.dart';

class DefaultNetworkInfo extends NetworkInfo {
  DefaultNetworkInfo(Connectivity connectivity) : super(connectivity);

  @override
  Future<bool> get isConnected async =>
      (await connectivity.checkConnectivity()) != ConnectivityResult.none;
}
