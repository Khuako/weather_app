import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:weather/ui/app.dart';

void main() async{
  await initializeDateFormatting('ru_RU', '');
  runApp(const App());
}

