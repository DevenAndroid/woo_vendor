import 'package:get/get.dart';
import 'package:woo_vendor/ui/screens/help.dart';

import '../../../splash_screen.dart';
import '../Notifications.dart';
import '../Verification.dart';
import '../account_detail.dart';
import '../agreement_policy.dart';
import '../bottam_navbar_screen.dart';
import '../change_location.dart';
import '../chat.dart';
import '../create_offer.dart';
import '../create_restaurant.dart';
import '../add_item.dart';
import '../food_licence.dart';
import '../gst_details.dart';
import '../home_screen.dart';
import '../log_in.dart';
import '../menu.dart';
import '../offer.dart';
import '../order.dart';
import '../otp_screen.dart';
import '../owner_details.dart';
import '../profile.dart';
import '../restaurant_details.dart';
import '../restaurant_location.dart';
import '../sign_up.dart';

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
  static const String profileScreen = "/profileScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String menuScreen = "/menuScreen";
  static const String restaurantDetailScreen = "/restaurantDetailScreen";
  static const String ownerDetailScreen = "/ownerDetailScreen";
  static const String accountDetailScreen = "/accountDetailScreen";
  static const String foodLicenceScreen = "/foodLicenceScreen";
  static const String gstDetailScreen = "/gstDetailScreen";
  static const String helpScreen = "/helpScreen";
  static const String addItemScreen = "/addItemScreen";
  static const String orderScreen = "/orderScreen";
  static const String chatScreen = "/chatScreen";
  static const String offerScreen = "/offerScreen";
  static const String createOfferScreen = "/createOfferScreen";
  static const String bottomNavBarScreen = "/bottomNavBarScreen";

  static var routes = [
    GetPage(name: "/", page: () => const  SplashScreen()),
    GetPage(name: loginScreen, page: () => const LogInScreen()),
    GetPage(name: getOTPScreen, page: () => const OtpScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: createRestaurantScreen, page: () => const CreateRestaurantScreen()),
    GetPage(name: verificationScreen, page: () => const VerificationScreen()),
    GetPage(name: agreementPolicyScreen, page: () => const AgreementPolicyScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: restaurantLocationScreen, page: () => const RestaurantLocationScreen()),
    GetPage(name: changeLocationScreen, page: () => const ChangeLocationScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(name: notificationScreen, page: () => const NotificationScreen()),
    GetPage(name: menuScreen, page: () => const MenuScreen()),
    GetPage(name: restaurantDetailScreen, page: () => const RestaurantDetailScreen()),
    GetPage(name: ownerDetailScreen, page: () => const OwnerDetailScreen()),
    GetPage(name: accountDetailScreen, page: () => const AccountDetailScreen()),
    GetPage(name: foodLicenceScreen, page: () => const FoodLicenceScreen()),
    GetPage(name: gstDetailScreen, page: () => const GSTDetailScreen()),
    GetPage(name: helpScreen, page: () => const HelpScreen()),
    GetPage(name: addItemScreen, page: () => const AddItemScreen()),
    GetPage(name: orderScreen, page: () => const OrderScreen()),
    GetPage(name: chatScreen, page: () => const ChatScreen()),
    GetPage(name: offerScreen, page: () => const OfferScreen()),
    GetPage(name: createOfferScreen, page: () => const CreateOfferScreen()),
    GetPage(name: bottomNavBarScreen, page: () => const BottomNavBarScreen()),
  ];
}
