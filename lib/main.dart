

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/TextWithHoverContainer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_color_changebutton.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/shift_gradiant_onhover.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/stageredanimation/stagered_animation.dart';
import 'constants/constants.dart';
import 'views/screens/home_screen/home_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}


