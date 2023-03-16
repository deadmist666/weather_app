import 'package:flutter/material.dart';

import 'package:weather_app/ui/components/digressions.dart';
import 'package:weather_app/ui/utils/color_palette.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size(double.infinity, 100);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height / 10),
        Padding(
          padding: Digression.paddingHorizontal24,
          child: TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              contentPadding: Digression.paddingHorizontal24,
              filled: true,
              fillColor: ColorPalette.kPrimaryColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              suffixIcon: Icon(Icons.search_outlined),
              hintText: 'Search Location',
            ),
          ),
        ),
      ],
    );
  }
}
