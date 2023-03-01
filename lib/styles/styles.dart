import 'package:flutter/material.dart';
import 'package:flutter_weather_app/styles/colors.dart';
import 'package:flutter_weather_app/styles/dimens.dart';

class AppStyle {
  late final double scale;

  /// Padding and margin values
  late final _Insets insets = _Insets(scale);

  /// Shared sizes
  late final _Sizes sizes = _Sizes();

  /// Rounded edge corner radii
  late final _Corners corners = _Corners();

  /// Device dimens
  late final Dimens dimens = Dimens(scale);

  AppStyle({Size? screenSize}) {
    if (screenSize == null) {
      scale = 1;
      return;
    }
    final shortestSide = screenSize.shortestSide;
    const tabletXl = 1000;
    const tabletLg = 800;
    const tabletSm = 600;
    const phoneLg = 400;
    if (shortestSide > tabletXl) {
      scale = 1.25;
    } else if (shortestSide > tabletLg) {
      scale = 1.15;
    } else if (shortestSide > tabletSm) {
      scale = 1;
    } else if (shortestSide > phoneLg) {
      scale = .9; // phone
    } else {
      scale = .85; // small phone
    }
    debugPrint('screenSize=$screenSize, scale=$scale');
  }

  /// The current theme colors for the app
  final AppColors colors = AppColors();
}

@immutable
class _Corners {
  late final double sm = 4;
  late final double md = 8;
  late final double semi_md = 12;
  late final double lg = 32;
}

@immutable
class _Sizes {
  double get maxContentWidth1 => 800;

  double get maxContentWidth2 => 600;

  double get maxContentWidth3 => 500;
  final Size minAppSize = const Size(380, 675);
}

@immutable
class _Insets {
  _Insets(this._scale);

  final double _scale;

  late final double xxs = 4 * _scale;
  late final double xs = 8 * _scale;
  late final double sm = 16 * _scale;
  late final double md = 24 * _scale;
  late final double lg = 32 * _scale;
  late final double xl = 48 * _scale;
  late final double xxl = 56 * _scale;
  late final double offset = 80 * _scale;
}


