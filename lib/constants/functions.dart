import 'package:intl/intl.dart';
import 'package:translator/translator.dart';

Future<String> translateText(String inputText) async {
  final translation = await GoogleTranslator().translate(inputText, from: 'en', to: 'ru');
  return translation.text;
}
String formatCurrentTime({DateTime? date}) {
  final now = date ?? DateTime.now();
  final formatter = DateFormat('EEEE, d MMMM, H:mm', 'ru_RU');
  return formatter.format(now);
}
String formatSunsetTime(int milliseconds) {
  int unixTimestamp = milliseconds;
  DateTime sunsetTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
  final formatter = DateFormat('HH:mm');
  return formatter.format(sunsetTime);
}
String formatDay(int milliseconds) {
  int unixTimestamp = milliseconds;
  DateTime sunsetTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
  final formatter = DateFormat('EE','ru_RU');
  return formatter.format(sunsetTime);
}