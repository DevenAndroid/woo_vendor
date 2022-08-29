import 'package:get/get.dart';

import '../../../splash_screen.dart';
import '../Verification.dart';
import '../agreement_policy.dart';
import '../change_location.dart';
import '../create_restaurant_screen.dart';
import '../home_screen.dart';
import '../log_in_screen.dart';
import '../otp_screen.dart';
import '../restaurant_location.dart';
import '../sign_up_screen.dart';

class MyRoutes {
  static const String loginScreen = "/loginScreen";
  static const String getOTPScreen = "/getOTPScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String createRestaurantScreen = "/createRestaurantScreen";
  static const String verificationScreen = "/verificationScreen";
  static const String agreementPolicyScreen = "/agreementPolicyScreen";
  static const String homeScreen = "/homeScreen";
  static const String restaurantLocationScreen = "/restaurantLocationScreen";
  static const String changeLocationScreen = "/changeLocationScreen";

  static var routes = [
    GetPage(name: "/", page: () => const ChangeLocationScreen()),
    GetPage(name: loginScreen, page: () => const LogInScreen()),
    GetPage(name: getOTPScreen, page: () => const OtpScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: createRestaurantScreen, page: () => const CreateRestaurantScreen()),
    GetPage(name: verificationScreen, page: () => const VerificationScreen()),
    GetPage(name: agreementPolicyScreen, page: () => const AgreementPolicyScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: restaurantLocationScreen, page: () => const RestaurantLocationScreen()),
    GetPage(name: changeLocationScreen, page: () => const ChangeLocationScreen()),
  ];
}
