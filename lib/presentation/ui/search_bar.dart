import 'package:flutter/material.dart';
import 'package:flutter_weather_app/main.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyApp.$style.corners.semi_md),
          color: Colors.grey.withOpacity(0.3)),
      child: SizedBox(
        height: MyApp.$style.dimens.dimens_48,
        width: double.infinity,
        child: TextField(
          cursorColor: Colors.grey,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIconColor: Colors.grey,
              prefixIcon: Icon(Icons.circle, size: MyApp.$style.dimens.dimens_16,)),
        ),
      ),
    );
  }
}
