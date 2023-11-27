import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/constants/app_text_style.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/ui/screens/main_screen/bloc/home_bloc.dart';
import 'package:weather/ui/screens/main_screen/today_info.dart';
import 'package:weather/ui/screens/widgets/weather_info.dart';
import 'package:weather/ui/widgets/forecast_card_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(
    this.mainWeather,
    this.weatherForecast,
  );

  final WeatherModel mainWeather;
  final List<WeatherModel?> weatherForecast;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentType = 'Today';

  String getTime() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour <= 12) {
      return 'Доброе Утро';
    } else if (hour >= 12 && hour <= 17) {
      return 'Добрый День';
    } else {
      return 'Добрый Вечер';
    }
  }

  TextEditingController searchController = TextEditingController();
  bool textFieldOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF673AB7)),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 600,
                decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    if (!textFieldOpen)
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${widget.mainWeather.name ?? ''},${widget.mainWeather.sys?.country ?? ''}',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    textFieldOpen = !textFieldOpen;
                                  });
                                },
                                child: const Icon(
                                  Icons.search,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (textFieldOpen)
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 80,
                              child: TextField(
                                cursorColor: Colors.black,
                                controller: searchController,
                                onSubmitted: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.searchCity(
                                          value,
                                        ),
                                      );
                                },
                                style: AppTextStyle.textStyle16w600,
                                decoration: InputDecoration(
                                  hintText: 'Париж',
                                  hintStyle:
                                      AppTextStyle.textStyle14w400.copyWith(
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                  prefixIcon: GestureDetector(
                                    onTap: () {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.searchCity(
                                              searchController.text,
                                            ),
                                          );
                                    },
                                    child: const Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.orange,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  textFieldOpen = !textFieldOpen;
                                });
                              },
                              icon: const Icon(
                                Icons.close,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        getTime(),
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TodayInformation(widget.mainWeather),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 140,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 15,
                        ),
                        itemCount: widget.weatherForecast.length,
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ForecastCardWidget(
                            mainWeather:
                                widget.weatherForecast[index] ?? WeatherModel(),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile differentCountry(String currentWeatherAndCountry) {
    return ListTile(
      tileColor: Constants.kContentColor,
      leading: const Icon(Icons.newspaper_sharp),
      title: Text(
        currentWeatherAndCountry,
        style: const TextStyle(fontSize: 15),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      iconColor: Constants.kPrimaryColor,
    );
  }

  Row days() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Today';
            });
          },
          child: Text(
            'Today',
            style: TextStyle(
                color: currentType == 'Today'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Tomorrow';
            });
          },
          child: Text(
            'Tomorrow',
            style: TextStyle(
                color: currentType == 'Tomorrow'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Next 7 days';
            });
          },
          child: Text(
            'Next 7 days',
            style: TextStyle(
                color: currentType == 'Next 7 days'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
      ],
    );
  }
}
