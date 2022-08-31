import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  final _numberController = TextEditingController();
  final _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
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
            child: SingleChildScrollView(
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
                        'Login',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.blackColor),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 40,
                        child: Divider(
                          height: 2,
                          thickness: 3,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Hello Again!',
                        style: TextStyle(
                            fontSize: 18, color: AppTheme.orangeColor),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            ' Your Account and get Started.',
                            style: TextStyle(
                                fontSize: 13, color: AppTheme.textColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [Text("Mobile Number",style: TextStyle(fontSize: 18),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: _numberController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        prefixChildIcon: const Icon(
                          Icons.phone,
                          color: AppTheme.orangeColor,
                        ),
                        hintText: "Enter your number",
                        keyboardType: TextInputType.number,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter a number'),
                          MinLengthValidator(10,
                              errorText: 'Minimum 10 numbers required'),
                          MaxLengthValidator(15,
                              errorText: 'Maximum numbers length is 15')
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Verify Your Number",
                            style: TextStyle(
                                color: AppTheme.orangeColor, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [Text("Restaurant ID",style: TextStyle(fontSize: 18),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: _idController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        prefixChildIcon: Image.asset("assets/images/id.png"),
                        hintText: "Enter your restaurant ID",
                        keyboardType: TextInputType.number,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter a number'),
                          MinLengthValidator(4,
                              errorText: 'Minimum 4 numbers required'),
                          MaxLengthValidator(15,
                              errorText: 'Maximum numbers length is 15')
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        height: 40,
                        width: 100,
                          primaryColor: AppTheme.orangeColor,
                          buttonTextColor: AppTheme.whiteColor,
                          buttonText: "Got OTP",
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              Get.toNamed(MyRoutes.getOTPScreen);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }

                            print("Get otp");
                          }),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Divider(
                              thickness: 2,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Or",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Divider(
                              thickness: 2,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/images/fb.png",
                                fit: BoxFit.cover),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/images/google.png",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(MyRoutes.signUpScreen);
                            },
                            child: const Text(
                              ' Sign up',
                              style: TextStyle(
                                color: AppTheme.orangeColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
