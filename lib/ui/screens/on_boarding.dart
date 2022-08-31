import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_button.dart';
import 'app_routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .15,
                        ),
                        Image.asset(
                          'assets/images/on_boarding_screen1.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "Good tastes Good",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.orangeColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 25, bottom: 5, left: 40, right: 40),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppTheme.blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .15,
                        ),
                        Image.asset(
                          'assets/images/on_boarding_screen2.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "The Thousand Flavors",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.orangeColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 25, bottom: 5, left: 40, right: 40),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppTheme.blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .15,
                        ),
                        Image.asset(
                          'assets/images/on_boarding_screen3.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "The Foodie Food",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.orangeColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 25, bottom: 5, left: 40, right: 40),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppTheme.blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .72,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          color: AppTheme.orangeColor.withOpacity(.23)),
                      // width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * .5 - 51),
                      child: SmoothPageIndicator(
                          controller: _pageController, // PageController
                          count: 3,
                          effect: const SlideEffect(
                              spacing: 0.0,
                              radius: 4.0,
                              dotWidth: 34.0,
                              dotHeight: 8.0,
                              paintStyle: PaintingStyle.stroke,
                              strokeWidth: 1.5,
                              dotColor: Colors.transparent,
                              activeDotColor: AppTheme
                                  .orangeColor), // your preferred effect
                          onDotClicked: (index) {})),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  CustomButton(
                    width: 120,
                    height: 40,
                    primaryColor: AppTheme.orangeColor,
                    buttonTextColor: AppTheme.whiteColor,
                    buttonText: "Next",
                    onPress: () {
                      if (_pageController.page == 2) {
                        Get.offAllNamed(MyRoutes.loginScreen);

                        print("object");
                      } else {
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease);
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
