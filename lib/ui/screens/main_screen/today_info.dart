import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/constants/app_text_style.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/constants/functions.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/ui/app.dart';
import 'package:weather/ui/functions.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_icons/weather_icons.dart';

class TodayInformation extends StatefulWidget {
  TodayInformation(this.mainWeather);

  final WeatherModel mainWeather;

  @override
  State<TodayInformation> createState() => _TodayInformationState();
}

class _TodayInformationState extends State<TodayInformation>
    with SingleTickerProviderStateMixin {
  String? icon;
  late final AnimationController _controller;
  late final Animation<double> _sizeAnimation;

  final double _originalSize = 150.0;
  final double _scaledSize = 120.0;
  Timer? timer;

  @override
  void initState() {
    icon = widget.mainWeather.weather?.first.icon;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _sizeAnimation = Tween<double>(begin: _originalSize, end: _scaledSize)
        .animate(_controller);
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }





  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onLongPressUp:() {
            _controller.reverse();
          },
          onLongPress: () async{
            _controller.forward();
           await  showAppDialog(
                context: context,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(
                        20,
                      ),
                      margin: const EdgeInsets.all(
                        20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          color: Colors.transparent),
                      child: Text(
                        getRandomFact(),
                        style: AppTextStyle.textStyle16w600,
                      ),
                    ),
                  ),
                )).then((value) {
                  _controller.reverse();
           });
          },
          onLongPressEnd: (details) {
            _controller.reverse();
          },

          child: AnimatedBuilder(
            animation: _sizeAnimation,
            builder: (BuildContext context, Widget? child) {
              return SizedBox(
                height: _sizeAnimation.value,
                width: _sizeAnimation.value,
                child: Center(
                  child: getWeatherIcon(icon ?? ''),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          '${widget.mainWeather.main?.temp?.toInt() ?? 13.0} ℃',
          style: AppTextStyle.textStyle30w700,
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          widget.mainWeather.weather?.first.description?.toUpperCase() ?? '',
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle22w500,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          formatCurrentTime(),
          style: AppTextStyle.textStyle16w400.copyWith(
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            FlipCard(
              key: cardKey,
              direction: FlipDirection.VERTICAL,
              flipOnTouch: true,
              front: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Lottie.asset(
                          'assets/lottie/maxTemp.json',
                          width: 75,
                          height: 75,
                        ),
                        Column(
                          children: [
                            Text(
                              'Макс. Темп.',
                              style: AppTextStyle.textStyle14w500.copyWith(
                                color: Colors.grey.withOpacity(
                                  0.7,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              '${widget.mainWeather.main?.tempMax?.toInt() ?? -1} ℃',
                              style: AppTextStyle.textStyle14w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Lottie.asset('assets/lottie/tempMin.json',
                            width: 75, height: 75),
                        Column(
                          children: [
                            Text(
                              'Мин. Темп.',
                              style: AppTextStyle.textStyle14w500.copyWith(
                                color: Colors.grey.withOpacity(
                                  0.7,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              '${widget.mainWeather.main?.tempMin?.toInt() ?? -1} ℃',
                              style: AppTextStyle.textStyle14w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              back: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.water_drop,
                              color: Colors.lightBlueAccent,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' ${widget.mainWeather.main?.humidity ?? 0}%',
                              style: AppTextStyle.textStyle16w400.copyWith(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              WeatherIcons.strong_wind,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              ' ${widget.mainWeather.wind?.speed ?? 0} м/c',
                              style: AppTextStyle.textStyle16w400.copyWith(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 95,
                              child: Text(
                                'Ощущается как',
                                textAlign: TextAlign.center,
                                style: AppTextStyle.textStyle16w400.copyWith(
                                  color: Colors.grey.withOpacity(
                                    0.7,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' ${widget.mainWeather.main?.feelsLike?.toInt() ?? 0} ℃',
                              style: AppTextStyle.textStyle16w400.copyWith(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Закат',
                          style: AppTextStyle.textStyle16w400.copyWith(
                            color: Colors.grey.withOpacity(
                              0.7,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          formatSunsetTime(widget.mainWeather.sys?.sunset ?? 0),
                          style: AppTextStyle.textStyle16w600,
                        ),
                      ],
                    ),
                    Lottie.asset(
                      'assets/lottie/dayNight.json',
                      reverse: true,
                      width: 150,
                      height: 135,
                    ),
                    Column(
                      children: [
                        Text(
                          'Рассвет',
                          style: AppTextStyle.textStyle16w400.copyWith(
                            color: Colors.grey.withOpacity(
                              0.7,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          formatSunsetTime(
                              widget.mainWeather.sys?.sunrise ?? 0),
                          style: AppTextStyle.textStyle16w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

int getWeather(double s) {
  return (s - 276).toInt();
}
