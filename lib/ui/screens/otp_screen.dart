import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_button.dart';
import 'app_routes/app_routes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  String otpController = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width,
                    color: AppTheme.orangeColor,
                    child: const Center(
                        child: Text(
                      'LOGO',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 30),
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'OTP',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 20,
                        child: Divider(
                          height: 2,
                          thickness: 3,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        'We have sent an OTP on +91 99845 45698',style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      OtpTextField(
                        focusedBorderColor: AppTheme.orangeColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        numberOfFields: 4,
                        fieldWidth: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        borderColor: const Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,

                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          otpController = code;
                        },

                        onSubmit: (String code) {
                          otpController = code;
                        }, // end onSubmit
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Resend OTP In " ,style: TextStyle(fontSize: 14),),
                          Text(
                            "00:20",
                            style: TextStyle(fontSize: 14,color: AppTheme.orangeColor),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          primaryColor: AppTheme.orangeColor,
                          buttonTextColor: AppTheme.whiteColor,
                          buttonText: "Verify & Proceed",
                          onPress: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (otpController == "") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please enter OTP')));
                            } else if (otpController.length < 4) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please enter valid OTP')));
                            } else {
                              Get.toNamed(MyRoutes.signUpScreen);
                            }

                            print("Get otp");
                          }),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
