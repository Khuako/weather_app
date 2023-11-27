import 'package:flutter/material.dart';
import 'package:weather/constants/app_text_style.dart';
import 'package:weather/constants/functions.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/ui/functions.dart';
import 'package:weather/ui/screens/main_screen/today_info.dart';

class ForecastCardWidget extends StatelessWidget {
  const ForecastCardWidget({super.key, required this.mainWeather});

  final WeatherModel mainWeather;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 140,
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.05),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 110,
            width: 110,
            child: getWeatherIcon(
              mainWeather.weather?.first.icon ?? '',
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    formatDay(
                      mainWeather.dt ?? 0,
                    ).toUpperCase(),
                    style: AppTextStyle.textStyle16w400.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.water_drop,
                    color: Colors.lightBlueAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                   ' ${mainWeather.main?.humidity ?? 0}%',
                    style: AppTextStyle.textStyle16w400.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.thermostat,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${mainWeather.main?.temp?.toInt() ?? 13.0} ℃',
                    style: AppTextStyle.textStyle30w700.copyWith(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
