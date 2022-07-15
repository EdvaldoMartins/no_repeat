// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart

import 'package:connectivity/connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  final Connectivity connectivity;

  NetworkInfo(this.connectivity);
}
