import 'package:get/get.dart';

import '../ui/screens/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // _getClientInformation();
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      print('splash scrren ends');
      Get.off(const OnboardingScreen());
    });
  }
}
