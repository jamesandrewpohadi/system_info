import 'dart:io';
import '../fluent.dart';
import '../utils.dart';

String getChipset() {
  switch (Platform.operatingSystem) {
    case 'android':
      return fluent(exec('getprop', ["ro.hardware", "ro.hardware.chipname"])).stringValue;
    case 'linux':
    case 'macos':
    case 'windows':
      notSupportedError();
    default:
      notSupportedError();
  }
}