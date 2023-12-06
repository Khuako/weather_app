import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:weather/ui/widgets/app_dialog.dart';

String getRoleName(int? roleId) {
  switch (roleId) {
    case 1:
      return "Пользователь";
    case 2:
      return "Пользователь \"Налоги\"";
    case 3:
      return "Пользователь \"Курортный сбор\"";
    case 4:
      return "Организация";
    case 5:
      return "Администратор";
    default:
      return "Пользователь";
  }
}

bool isNumeric(String s) {
  return RegExp(r'^\d+$').hasMatch(s);
}

Future<void> openWeb({required String url}) async {
  final Uri uri = Uri.parse(url);
  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

String getQuarter(String quarter) {
  quarter = quarter.toLowerCase();
  switch (quarter) {
    case 'первый':
      return 'I';
    case 'второй':
      return 'II';
    case 'третий':
      return 'III';
    case 'четвёртый' || 'четвертый':
      return 'IV';
    case 'I':
      return 'первый';
    case 'II':
      return 'второй';
    case 'III':
      return 'третий';
    case 'IV':
      return 'четвёртый';
    default:
      return 'I';
  }
}

String unmaskPhone(String maskedPhone) {
  maskedPhone = maskedPhone.replaceAll(' ', '');
  maskedPhone = maskedPhone.replaceAll('(', '');
  maskedPhone = maskedPhone.replaceAll(')', '');
  maskedPhone = maskedPhone.replaceAll('-', '');
  return maskedPhone;
}

enum AppTabRoutes {
  report('Отчеты', 'assets/icons/report_sidebar.svg'),
  request('Заявки', 'assets/icons/requests_sidebar.svg'),
  analytics('Аналитика', 'assets/icons/analytics.svg'),
  admin('Администрирование', 'assets/icons/admin_sidebar.svg'),
  taxes('Налоги', 'assets/icons/taxes.svg'),
  dashboard('Дашборды', 'assets/icons/dashboard.svg'),
  ;

  const AppTabRoutes(this.title, this.iconPath);

  final String title;
  final String iconPath;
}

enum AppTabRoutesOper {
  orgCard('Карточка организации', 'assets/icons/report_sidebar.svg'),
  requests('Заявки', 'assets/icons/requests_sidebar.svg'),
  reports('Отчеты', 'assets/icons/report_sidebar.svg'),
  taxes('Налоги', 'assets/icons/taxes.svg'),
  ;

  const AppTabRoutesOper(this.title, this.iconPath);

  final String title;
  final String iconPath;
}

Future<T?> showAppDialog<T>({
  required BuildContext context,
  required Widget child,
  Color barrierColor = Colors.black54,
  double? maxWidth,
  EdgeInsets? padding,
  EdgeInsetsGeometry? margin,
}) {
  return showDialog<T>(
    barrierColor: Colors.transparent,
    context: context,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AppDialog(
        backgroundColor: Colors.transparent,
        margin: margin,
        padding: padding,
        maxWidth: maxWidth,
        child: child,
      ),
    ),
  );
}

void showAppDialogNoValue<T>({
  required BuildContext context,
  required Widget child,
  Color barrierColor = Colors.black54,
  double? maxWidth,
  EdgeInsets? padding,
  EdgeInsetsGeometry? margin,
}) {
  showDialog<T>(
    barrierColor: barrierColor,
    context: context,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AppDialog(
        margin: margin,
        padding: padding,
        maxWidth: maxWidth,
        child: child,
      ),
    ),
  );
}

void showMessage({
  required String message,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP_RIGHT,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.cyanAccent,
    textColor: Colors.white,
    fontSize: 16,
    webBgColor: 'linear-gradient(to right, #ff0000, #ff5050)',
  );
}

Widget getWeatherIcon(String icon,) {
  switch (icon) {
    case '01d':
      return Lottie.asset('assets/lottie/01d.json',);
    case '01n':
      return Lottie.asset('assets/lottie/01n.json');
    case '02d':
      return Lottie.asset('assets/lottie/02d.json');
    case '02n':
      return Lottie.asset('assets/lottie/02n.json');
    case '03d':
      return Lottie.asset('assets/lottie/03d.json');
    case '03n':
      return Lottie.asset('assets/lottie/03n.json');
    case '04d':
      return Lottie.asset('assets/lottie/04d.json');
    case '04n':
      return Lottie.asset('assets/lottie/04n.json');
    case '09d':
      return Lottie.asset('assets/lottie/09d.json');
    case '09n':
      return Lottie.asset('assets/lottie/09n.json');
    case '10n':
      return Lottie.asset('assets/lottie/09n.json');
    case '10d':
      return Lottie.asset('assets/lottie/09d.json');
    case '11n':
      return Lottie.asset('assets/lottie/11n.json');
    case '11d':
      return Lottie.asset('assets/lottie/11d.json');
    case '13d' || '13n':
      return Lottie.asset('assets/lottie/snow.json');
    case '50d' || '50n':
      return Lottie.asset('assets/lottie/mist.json');
    default:
      return Lottie.asset('assets/lottie/03d.json');
  }
}
