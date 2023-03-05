import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/business/bloc/get_weather_bloc.dart';
import 'package:flutter_weather_app/main.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(MyApp.$style.corners.semi_md),
                color: Colors.grey.withOpacity(0.3)),
            child: SizedBox(
              height: MyApp.$style.dimens.dimens_48,
              width: double.infinity,
              child: TextField(
                onChanged: (newValue) {
                  setState(() {
                    text = newValue;
                  });
                },
                cursorColor: Colors.grey,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIconColor: Colors.grey,
                    prefixIcon: Icon(
                      Icons.circle,
                      size: MyApp.$style.dimens.dimens_16,
                    )),
              ),
            ),
          ),
        ),
        Flexible(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<GetWeatherBloc>(context)
                        .add(GetWeatherForLocation(location: this.text));
                  },
                  child: Text("Search")),
            ))
      ],
    );
  }
}
