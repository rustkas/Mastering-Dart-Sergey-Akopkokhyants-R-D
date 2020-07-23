import 'console_log.dart';
import 'file_log.dart';

abstract class Log {
  static bool useConsoleLog = false;
  factory Log() {
    return useConsoleLog ? ConsoleLog() : FileLog();
  }
  void debug(String message);
}
