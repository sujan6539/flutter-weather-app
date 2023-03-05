import 'package:flutter/material.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:flutter_weather_app/presentation/screens/dashboard.dart';
import 'package:flutter_weather_app/presentation/utils/weatherUtils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SquareCard extends StatelessWidget {
  String data;
  String type;
  String place;
  String date;

  SquareCard(
      {Key? key, required this.data, required this.type, required this.place, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var datelist = date.split(',');
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return const Dashboard();
          }),

        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MyApp.$style.corners.semi_md)),
        child: Container(
          height: MyApp.$style.scale * 150,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(MyApp.$style.corners.semi_md)),
              gradient: LinearGradient(colors: [
                Colors.blueAccent.shade700,
                Colors.blueAccent.shade200,
                Colors.blue,
              ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(datelist[1].trim(), style: Theme.of(context).textTheme.headline5),
                Text(datelist[0]),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              this.data,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              ' °C',
                              style: Theme.of(context).textTheme.headline5,
                            )
                          ],
                        ),
                        Text(
                          this.type,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        WeatherUtils.getWeatherIcon(type),
                        size: 25,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                  child: Text(place ?? ''),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
