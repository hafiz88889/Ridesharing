import 'package:flutter/cupertino.dart';
import 'package:rideshare/ui/screen/calling_screen/calling_screen/screen/calling_page.dart';
import 'package:rideshare/ui/screen/calling_screen/reciving_screen/screen/recived_cell.dart';
import 'package:rideshare/ui/screen/enable_location_screen/screen/enable_location_page.dart';
import 'package:rideshare/ui/screen/home_screen/screen/home_page.dart';
import 'package:rideshare/ui/screen/location_screen_confirm/screen/location_screen_confirm.dart';
import 'package:rideshare/ui/screen/message_screen/screen/chatting_page.dart';
import 'package:rideshare/ui/screen/notification_screen/screen/notification_page.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_one.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_three.dart';
import 'package:rideshare/ui/screen/onboarding_screen/screen/screen_two.dart';
import 'package:rideshare/ui/screen/payment_screen/screen/botto_sheet_page.dart';
import 'package:rideshare/ui/screen/payment_screen/screen/payment_page.dart';
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
import 'package:rideshare/ui/screen/transport_screen/car_details_screen/screen/car_details_page.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_screen/screen/request_rent.dart';
import 'package:rideshare/ui/screen/transport_screen/request_rent_two/screen/request_rent_Page_two.dart';
import 'package:rideshare/ui/screen/transport_screen/select_transport_screen/screen/select_transport_screen.dart';
import 'package:rideshare/ui/screen/transport_screen/thank_you_screen/thank_you_screen.dart';
import 'package:rideshare/ui/screen/wallet_screen/screen/wallet_page.dart';
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
  static String carDetailsPage="/CarDetailsPage";
  static String requestRent="/RequestRent";
  static String requestRentPageTwo="/RequestRentPageTwo";
  static String thankYouScreen="/ThankYouScreen";
  static String locationScreenConfirm="/LocationScreenConfirm";
  static String chattingPage="/ChattingPage";
  static String callingPage="/CallingPage";
  static String recevingPage="/RecevingPage";
  static String paymentPage="/PaymentPage";
  static String bottoSheetPage="/BottoSheetPage";
  static String walletPage="/WalletPage";


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
      RouteHelper.carDetailsPage:(context)=>const CarDetailsPage(),
      RouteHelper.requestRent:(context)=>const RequestRent(),
      RouteHelper.requestRentPageTwo:(context)=>const RequestRentPageTwo(),
      RouteHelper.thankYouScreen:(context)=>const ThankYouScreen(),
      RouteHelper.locationScreenConfirm:(context)=>const LocationScreenConfirm(),
      RouteHelper.chattingPage:(context)=>const ChattingPage(),
      RouteHelper.callingPage:(context)=>const CallingPage(),
      RouteHelper.recevingPage:(context)=>const RecevingPage(),
      RouteHelper.paymentPage:(context)=>const PaymentPage(),
      RouteHelper.bottoSheetPage:(context)=>const BottoSheetPage(),
      RouteHelper.walletPage:(context)=>const WalletPage(),
    };
  }
}