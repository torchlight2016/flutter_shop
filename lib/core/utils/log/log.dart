import 'package:talker/talker.dart';

abstract class Log {
  static Talker talker = Talker();

  static void d(String msg) {
    talker.debug(msg);
  }

  static void i(String message) {
    talker.info(message);
  }

  static void e(String msg, Object error, StackTrace stackTrace) {
    talker.error(msg, error, stackTrace);
  }
}
