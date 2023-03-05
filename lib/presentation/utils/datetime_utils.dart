import 'package:intl/intl.dart';

class DateTimeUtils {
  static String EpocToDateTimeMMMMEEEEd(int epocTime) {
    if (epocTime == 0) {
      return '';
    }
    var dt = DateTime.fromMillisecondsSinceEpoch(epocTime *1000);

// 12 Hour format:
    return DateFormat.MMMMEEEEd().format(dt);
  }
}
