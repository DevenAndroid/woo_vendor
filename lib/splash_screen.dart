import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/resources/theme/theme.dart';

import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.orangeColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.bottomCenter,
            child: const Text(
              "LOGO",
              style: TextStyle(
                  fontSize: 50,
                  color: AppTheme.whiteColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
