import 'package:flutter/material.dart';

class ScreenUtils {
  static Size getDeviceSize(BuildContext buildContext) {
    Size size = MediaQuery.of(buildContext).size;
    return size;
  }
}
