import 'package:flutter/cupertino.dart';
import 'package:rideshare/ui/screen/enable_location_screen/screen/enable_location_page.dart';
import 'package:rideshare/ui/screen/home_screen/screen/home_page.dart';
import 'package:rideshare/ui/screen/notification_screen/screen/notification_page.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_one.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_three.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_two.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/phone_verification_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/profile_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/send_verification_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/set_new_password.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/set_password_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/sign_in_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/sign_up_page.dart';
import 'package:rideshare/ui/screen/sign_up_screen/screen/vefication_page.dart';
import 'package:rideshare/ui/screen/transport_screen/available_car_screen/screen/avaiable_page.dart';
import 'package:rideshare/ui/screen/transport_screen/available_car_screen/screen/available_car_two.dart';
import 'package:rideshare/ui/screen/transport_screen/select_transport_screen/screen/select_transport_screen.dart';
import 'package:rideshare/ui/screen/wellcome_screen/screen/wellcome_page.dart';

class RouteHelper{
  static String onBoardingPageOne="/";
  static String onBoardingPageTwo="/onBoardingPageTwo";
  static String onBoardingPageThree="/onBoardingPageThree";
  static String enableLocationPage="/EnableLocationPage";
  static String wellcomePage="/WellcomePage";
  static String signUpPage="/SignUpPage";
  static String verifyPage="/VeficationPage";
  static String setPassword="/SetPasswordPage";
  static String profile="/ProfilePage";
  static String signIn="/SignInPage";
  static String sendVerificationPage="/SendVerificationPage";
  static String phoneVerificationPage="/PhoneVerificationPage";
  static String setNewPassword="/SetNewPassword";
  static String homePage="/HomePage";
  static String notiFicationPage="/NotificationPage";
  static String selectTransportScreen="/SelectTransportScreen";
  static String avaiablePage="/AvaiablePage";
  static String avaiablePageTwo="/AvaiablePageTwo";


  static Map<String,WidgetBuilder>getRoute(){
    return {
      RouteHelper.onBoardingPageOne: (context) => const OnBoardingPage(),
      RouteHelper.onBoardingPageTwo: (context) => const OnBoardingPageTwo(),
      RouteHelper.onBoardingPageThree: (context) => const OnBoardingPageThree(),
      RouteHelper.enableLocationPage:(context)=> const EnableLocationPage(),
      RouteHelper.wellcomePage:(context)=>const  WellcomePage(),
      RouteHelper.signUpPage:(context)=>const  SignUpPage(),
      RouteHelper.verifyPage:(context)=>const  VeficationPage(),
      RouteHelper.setPassword:(context)=>const  SetPasswordPage(),
      RouteHelper.profile:(context)=>const ProfilePage(),
      RouteHelper.signIn:(context)=>const SignInPage(),
      RouteHelper.sendVerificationPage:(context)=>const SendVerificationPage(),
      RouteHelper.phoneVerificationPage:(context)=>const PhoneVerificationPage(),
      RouteHelper.setNewPassword:(context)=>const SetNewPassword(),
      RouteHelper.homePage:(context)=>const HomePage(),
      RouteHelper.notiFicationPage:(context)=>const NotificationPage(),
      RouteHelper.selectTransportScreen:(context)=>const SelectTransportScreen(),
      RouteHelper.avaiablePage:(context)=>const AvaiablePage(),
      RouteHelper.avaiablePageTwo:(context)=>const AvaiablePageTwo(),
    };
  }
}