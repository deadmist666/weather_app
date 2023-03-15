import 'package:flutter/material.dart';

import 'components/home_screen_app_bar.dart';
import 'components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreenAppBar(),
      body: HomeScreenBody(),
    );
  }
}
