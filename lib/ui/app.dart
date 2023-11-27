import 'package:flutter/material.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/data/services/api_client.dart';
import 'package:weather/ui/screens/main_screen/home_bloc_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    getClient();
    super.initState();
  }

  getClient() async {
    await ApiClient()
        .initClient(url: '', updateTokenPath: '', context: context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeBlocScreen(),
    );
  }
}
