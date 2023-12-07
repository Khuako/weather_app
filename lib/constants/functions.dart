import 'dart:ui';

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
getColors(int temp){
  if(temp < 0){
    return [
      const Color(0xFF83a4d4), // Пастельно-синий
      const Color(0xFFb6fbff), // Светло-голубой
    ];
  }
  else if(temp > 0 && temp <=15){
    return [
      const Color(0xFF89f7fe), // Светло-голубой
      const Color(0xFF66a6ff), // Голубой
    ];
  }else if(temp > 15 && temp <=25){
    return  [
      const Color(0xFFffd194), // Светло-желтый
      const Color(0xFFffcbcb), // Светло-коралловый
    ];
  }else{
    return  [
      const Color(0xFFff6e7f), // Светло-красный
      const Color(0xFFbfe9ff), // Небесно-голубой
    ];
  }
}