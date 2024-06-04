import 'dart:io';
import '../fluent.dart';
import '../utils.dart';

String getDeviceName() {
  switch (Platform.operatingSystem) {
    case 'android':
      return fluent(exec('getprop', ["ro.product.model"])).stringValue;
    case 'linux':
    case 'macos':
    case 'windows':
      notSupportedError();
    default:
      notSupportedError();
  }
}