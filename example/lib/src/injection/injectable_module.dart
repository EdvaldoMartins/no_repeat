// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart
 
import 'package:flutter/material.dart'; 
import 'package:injectable/injectable.dart';
import 'package:connectivity/connectivity.dart'; 

@module
abstract class InjectableModule {

  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();

  @lazySingleton
  Connectivity get connectivity => Connectivity();
    
}
