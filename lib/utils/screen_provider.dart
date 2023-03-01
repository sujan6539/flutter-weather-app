import 'package:flutter/material.dart';

class ScreenProvider {
  static Size getDeviceSize(BuildContext buildContext) {
    Size size = MediaQuery.of(buildContext).size;
    return size;
  }
}
