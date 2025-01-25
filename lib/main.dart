import 'package:flutter/material.dart';
import 'package:rideshare/config/utils/my_route_helper.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_two.dart';

import 'ui/screen/onboarding_screen/screen/screen_one.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ride Share",
      initialRoute: RouteHelper.onBoardingPageOne,
      routes: RouteHelper.getRoute()
    );

  }

}