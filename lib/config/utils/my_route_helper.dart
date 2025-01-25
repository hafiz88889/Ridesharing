import 'package:flutter/cupertino.dart';
import 'package:rideshare/ui/screen/enable_location_screen/screen/enable_location_page.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_one.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_three.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_two.dart';
import 'package:rideshare/ui/screen/wellcome_screen/screen/wellcome_page.dart';

class RouteHelper{
  static String onBoardingPageOne="/";
  static String onBoardingPageTwo="/onBoardingPageTwo";
  static String onBoardingPageThree="/onBoardingPageThree";
  static String enableLocationPage="/EnableLocationPage";
  static String wellcomePage="/WellcomePage";


  static Map<String,WidgetBuilder>getRoute(){
    return {
      RouteHelper.onBoardingPageOne: (context) => const OnBoardingPage(),
      RouteHelper.onBoardingPageTwo: (context) => const OnBoardingPageTwo(),
      RouteHelper.onBoardingPageThree: (context) => const OnBoardingPageThree(),
      RouteHelper.enableLocationPage:(context)=> const EnableLocationPage(),
      RouteHelper.wellcomePage:(context)=>const  WellcomePage(),
    };
  }
}