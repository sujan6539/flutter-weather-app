import 'package:flutter/material.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:flutter_weather_app/presentation/ui/stats_label.dart';
import 'package:flutter_weather_app/presentation/utils/screen_utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MyApp.$style.corners.lg)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MyApp.$style.corners.lg),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.blue.shade900,
                  Colors.lightBlueAccent.shade400,
                ])),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.locationPin,
                  size: MyApp.$style.insets.sm,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MyApp.$style.insets.xs,
                      MyApp.$style.insets.md,
                      MyApp.$style.insets.md,
                      MyApp.$style.insets.md),
                  child: Text(
                    "Location",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MyApp.$style.insets.md,
                  MyApp.$style.insets.md,
                  MyApp.$style.insets.md,
                  MyApp.$style.insets.md),
              child: Icon(
                Icons.sunny,
                size: MyApp.$style.dimens.dimens_150,
              ),
            ),
            const Text(
              "18",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 120),
            ),
            Text(
              "Mostly Clear",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("Date"),
            Container(
              margin: EdgeInsets.fromLTRB(MyApp.$style.corners.md,
                  MyApp.$style.corners.md, MyApp.$style.corners.lg, 0),
              width: 0.8 *
                  MyApp.$style.scale *
                  ScreenUtils.getDeviceSize(context).width,
              height: MyApp.$style.scale * 2,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MyApp.$style.corners.semi_md,
                  MyApp.$style.corners.semi_md,
                  MyApp.$style.corners.semi_md,
                  MyApp.$style.insets.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  StatsLabel(
                    icon: FontAwesomeIcons.sun,
                    stats: "24%",
                    description: "Humidity",
                  ),
                  StatsLabel(
                    icon: FontAwesomeIcons.wind,
                    stats: "13 km/hr",
                    description: "Wind",
                  ),
                  StatsLabel(
                    icon: FontAwesomeIcons.cloudRain,
                    stats: "24%",
                    description: "chances of rain",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
