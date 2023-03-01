import 'package:flutter/material.dart';
import 'package:flutter_weather_app/main.dart';

class RectangleCard extends StatelessWidget {
  const RectangleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MyApp.$style.corners.semi_md)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MyApp.$style.corners.semi_md),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.blueAccent.shade700,
                  Colors.blueAccent.shade200,
                  Colors.blue,
                ])),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
              child: Icon(Icons.sunny),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 12.0, 12.0, 0.0),
                  child: Text("09:00"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 12.0, 12.0),
                  child: Text(
                    "15",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
