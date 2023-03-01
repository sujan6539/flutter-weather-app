import 'package:flutter/material.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SquareCard extends StatelessWidget {
  const SquareCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MyApp.$style.corners.semi_md)),
      child: Container(
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
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "26",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        "Cloudy",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.cloudSunRain),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                child: Text("California"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
