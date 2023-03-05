import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'string_utils.dart';

class WeatherUtils {
  static IconData getWeatherIcon(String type) {
    if (StringUtils.equalsIgnoreCase(type, "rain")) {
      return FontAwesomeIcons.cloudRain;
    } else if (StringUtils.equalsIgnoreCase(type, "snow")) {
      return FontAwesomeIcons.snowflake;
    } else if (StringUtils.equalsIgnoreCase(type, "clouds")) {
      return FontAwesomeIcons.cloud;
    } else if (StringUtils.equalsIgnoreCase(type, "extreme")) {
      return FontAwesomeIcons.thunderstorm;
    } else {
      return FontAwesomeIcons.sun;
    }
  }
}
