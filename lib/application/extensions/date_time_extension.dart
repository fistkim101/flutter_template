import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormattedString(String format) {
    String formattedDate = DateFormat(format).format(this);
    return formattedDate;
  }
}
