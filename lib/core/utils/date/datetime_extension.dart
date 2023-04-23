import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get yyyyMd => DateFormat('yyyy년 M월 d일').format(this);
}
