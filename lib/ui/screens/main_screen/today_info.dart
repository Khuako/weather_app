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

class TodayInformation extends StatefulWidget {
  TodayInformation(this.mainWeather);

  final WeatherModel mainWeather;

  @override
  State<TodayInformation> createState() => _TodayInformationState();
}

class _TodayInformationState extends State<TodayInformation> {
  String? icon;


  Timer? timer;

  @override
  void initState() {
    icon = widget.mainWeather.weather?.first.icon;

    super.initState();
  }
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: getWeatherIcon(icon ?? ''),
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
                flipOnTouch:true ,
                front: Row(
                  children: [
                    Row(
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
                    Row(
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
                    )
                  ],
                ),
                back: Column(
                  children: [
                    Text('Погода по часам',style: AppTextStyle.textStyle14w400,),

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
                            style: AppTextStyle.textStyle16w400.copyWith( color: Colors.grey.withOpacity(
                              0.7,
                            ),),
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
